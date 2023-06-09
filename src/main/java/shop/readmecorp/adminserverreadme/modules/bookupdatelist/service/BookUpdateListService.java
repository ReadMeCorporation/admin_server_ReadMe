package shop.readmecorp.adminserverreadme.modules.bookupdatelist.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.common.util.S3Upload;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.entity.BookUpdateList;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.enums.BookUpdateListStatus;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.repository.BookUpdateListRepository;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.request.BookUpdateListSaveRequest;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.repository.BigCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.category.repository.SmallCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.repository.PublisherRepository;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class BookUpdateListService {

    private final BookUpdateListRepository bookUpdateListRepository;
    private final FileRepository fileRepository;
    private final BookRepository bookRepository;
    private final PublisherRepository publisherRepository;
    private final BigCategoryRepository bigCategoryRepository;
    private final SmallCategoryRepository smallCategoryRepository;
    private final S3Upload s3Upload;

    public BookUpdateListService(BookUpdateListRepository bookUpdateListRepository, FileRepository fileRepository, BookRepository bookRepository, PublisherRepository publisherRepository, BigCategoryRepository bigCategoryRepository, SmallCategoryRepository smallCategoryRepository, S3Upload s3Upload) {
        this.bookUpdateListRepository = bookUpdateListRepository;
        this.fileRepository = fileRepository;
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

            Book book = optionalBook.get();

            String epubUrl = "";
            String coverUrl = "";
            Integer epubSize = 0;
            Integer coverSize = 0;

            // 파일정보 불러오기
            FileInfo fileInfoEpub = book.getEpub();
            FileInfo fileInfoCover = book.getCover();
            // 파일정보에 있는 파일 불러오기
            List<File> epubFiles = fileRepository.findByFileInfo(fileInfoEpub);
            List<File> coverFiles = fileRepository.findByFileInfo(fileInfoCover);

            // 파일에 있는 url을 변수에 입력
            for (File file : coverFiles) {
                coverUrl = file.getFileUrl();
            }
            for (File file : epubFiles) {
                epubUrl = file.getFileUrl();
            }

            // 업로드 했을시 epubUrl, size 수정
            if (request.getEpubFile() != null) {
                try {
                    epubUrl = s3Upload.upload(request.getEpubFile(), "bookepub/");
                    epubSize = request.getEpubFile().getInputStream().available();
                } catch (IOException ioException) {
                    ioException.printStackTrace();
                }
            }

            // 업로드 했을시 coverUrl, size 수정
            if (request.getBookCover() != null) {
                try {
                    coverUrl = s3Upload.upload(request.getBookCover(), "bookcover/");
                    coverSize = request.getBookCover().getInputStream().available();
                } catch (IOException ioException) {
                    ioException.printStackTrace();
                }
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
                    .epubSize(epubSize)
                    .coverUrl(coverUrl)
                    .coverSize(coverSize)
                    .bigCategory(optionalBigCategory.get())
                    .smallCategory(optionalSmallCategory.get())
                    .authorInfo(request.getAuthorInfo())
                    .content(request.getContent())
                    .status(BookUpdateListStatus.ACTIVE)
                    .build();

            // 도서 상태변경
            book.setStatus(BookStatus.UPDATEREQUEST);
            return bookUpdateListRepository.save(bookUpdateList);
        }
}
