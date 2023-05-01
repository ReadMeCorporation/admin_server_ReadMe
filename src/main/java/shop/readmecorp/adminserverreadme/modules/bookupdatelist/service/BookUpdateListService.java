package shop.readmecorp.adminserverreadme.modules.bookupdatelist.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.common.util.S3Upload;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.entity.BookUpdateList;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.enums.BookUpdateListStatus;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.repository.BookUpdateListRepository;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.request.BookUpdateListSaveRequest;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.repository.BigCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.category.repository.SmallCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.repository.PublisherRepository;

import java.io.IOException;
import java.util.Optional;

@Service
public class BookUpdateListService {

    private final BookUpdateListRepository bookUpdateListRepository;
    private final BookRepository bookRepository;
    private final PublisherRepository publisherRepository;
    private final BigCategoryRepository bigCategoryRepository;
    private final SmallCategoryRepository smallCategoryRepository;
    private final S3Upload s3Upload;

    public BookUpdateListService(BookUpdateListRepository bookUpdateListRepository, BookRepository bookRepository, PublisherRepository publisherRepository, BigCategoryRepository bigCategoryRepository, SmallCategoryRepository smallCategoryRepository, S3Upload s3Upload) {
        this.bookUpdateListRepository = bookUpdateListRepository;
        this.bookRepository = bookRepository;
        this.publisherRepository = publisherRepository;
        this.bigCategoryRepository = bigCategoryRepository;
        this.smallCategoryRepository = smallCategoryRepository;
        this.s3Upload = s3Upload;
    }

        @Transactional
        public BookUpdateList save(BookUpdateListSaveRequest request, Integer bookId) {

            Optional<Book> optionalBook = bookRepository.findById(bookId);

            if (optionalBook.isEmpty()){
                throw new CustomException(BookConst.notFound);
            }

            Optional<Publisher> optionalPublisher = publisherRepository.findByBusinessName(request.getPublisher());
            Optional<BigCategory> optionalBigCategory = bigCategoryRepository.findByBigCategory(request.getBigCategory());
            Optional<SmallCategory> optionalSmallCategory = smallCategoryRepository.findBySmallCategory(request.getSmallCategory());

            String epubUrl = "";
            String coverUrl = "";

            try {
                epubUrl += s3Upload.upload(request.getEpubFile(), "bookepub/");
                coverUrl += s3Upload.upload(request.getBookCover(), "bookcover/");
            } catch (IOException ioException) {
                ioException.printStackTrace();
            }

            // 수정요청 생성
            BookUpdateList bookUpdateList = BookUpdateList.builder()
                    .book(optionalBook.get())
                    .publisher(optionalPublisher.get())
                    .title(request.getTitle())
                    .author(request.getAuthor())
                    .price(request.getPrice())
                    .introduction(request.getIntroduction())
                    .epubUrl(epubUrl)
                    .coverUrl(coverUrl)
                    .bigCategory(optionalBigCategory.get())
                    .smallCategory(optionalSmallCategory.get())
                    .authorInfo(request.getAuthorInfo())
                    .content(request.getContent())
                    .status(BookUpdateListStatus.ACTIVE)
                    .build();

            return bookUpdateListRepository.save(bookUpdateList);
        }
}
