package shop.readmecorp.adminserverreadme.modules.book.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.book.dto.PublishersBookListDTO;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.entity.Heart;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.book.repository.HeartRepository;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.request.BookUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.repository.BigCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.category.repository.SmallCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileStatus;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileType;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileInfoRepository;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;
import shop.readmecorp.adminserverreadme.modules.publisher.PublisherConst;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.repository.PublisherRepository;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;
import shop.readmecorp.adminserverreadme.modules.review.enums.ReviewStatus;
import shop.readmecorp.adminserverreadme.modules.review.repository.ReviewRepository;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class BookService {


    private final BookRepository bookRepository;
    private final ReviewRepository reviewRepository;
    private final PublisherRepository publisherRepository;
    private final FileInfoRepository fileInfoRepository;
    private final FileRepository fileRepository;
    private final HeartRepository heartRepository;
    private final BigCategoryRepository bigCategoryRepository;
    private final SmallCategoryRepository smallCategoryRepository;
    private final ObjectMapper objectMapper;

    public BookService(BookRepository bookRepository, ReviewRepository reviewRepository, PublisherRepository publisherRepository, FileInfoRepository fileInfoRepository, FileRepository fileRepository, HeartRepository heartRepository, BigCategoryRepository bigCategoryRepository, SmallCategoryRepository smallCategoryRepository, ObjectMapper objectMapper) {
        this.bookRepository = bookRepository;
        this.reviewRepository = reviewRepository;
        this.publisherRepository = publisherRepository;
        this.fileInfoRepository = fileInfoRepository;
        this.fileRepository = fileRepository;
        this.heartRepository = heartRepository;
        this.bigCategoryRepository = bigCategoryRepository;
        this.smallCategoryRepository = smallCategoryRepository;
        this.objectMapper = objectMapper;
    }

    public Page<Book> getBookList(Pageable pageable) {
        return bookRepository.findByStatusActiveOrDelete(BookStatus.ACTIVE,BookStatus.DELETE,pageable);
    }

    public List<PublishersBookListDTO> getPublishersBookList(Integer userId) {
        Optional<Publisher> publisher = publisherRepository.findById(userId);

        if (publisher.isEmpty()) {
            throw new Exception400(PublisherConst.notFound);
        }

        List<Book> books = bookRepository.findByUserId(userId);
        List<Review> reviews = reviewRepository.findByBookPublisherId(userId);

        // ACTIVE 리뷰만
        Map<Integer, List<Review>> reviewsByBookId = reviews.stream()
                .filter(review -> review.getStatus().equals(ReviewStatus.ACTIVE))
                .collect(Collectors.groupingBy(review -> review.getBook().getId()));


        return books.stream()
                .map(book -> {
                    List<Review> bookReviews = reviewsByBookId.getOrDefault(book.getId(), Collections.emptyList());
                    List<Heart> bookHearts = heartRepository.findByBookId(book.getId()); // 여기에서 book.getId()를 사용합니다.
                    return new PublishersBookListDTO(book, bookReviews, bookHearts);
                })
                .collect(Collectors.toList());
    }


    public Page<Book> getBookSaveList(Pageable pageable) {
        return bookRepository.findByStatusWait(BookStatus.WAIT,pageable);
    }

    public Optional<Book> getBook(Integer id) {
        return bookRepository.findById(id);
    }

    public Book save(BookSaveRequest request) {

        Optional<Publisher> optionalPublisher = publisherRepository.findByBusinessName(request.getPublisher());
        Optional<BigCategory> optionalBigCategory = bigCategoryRepository.findByBigCategory(request.getBigCategory());
        Optional<SmallCategory> optionalSmallCategory = smallCategoryRepository.findBySmallCategory(request.getSmallCategory());

        // fileInfo 생성
        FileInfo fileInfo =fileInfoRepository.save(FileInfo.builder().type(FileType.BOOK).build());

        // 도서 생성에 필요한 filePath 만들기
        //TODO AWS S3를 이용해서 epub 파일경로 받아오기
        String filePath = ""; // epub파일경로

        // 파일생성에 필요한 fileName, fileUrl 만들기
        String fileName= request.getBookCover().getOriginalFilename(); // 표지 파일이름
        //TODO AWS S3를 이용해서 표지 파일경로 받아오기
        String fileUrl = ""; // 표지 파일경로

        // 파일생성
        File file = fileRepository.save(File.builder()
                .fileInfo(fileInfo)
                .fileName(fileName)
                .fileUrl(fileUrl)
                .status(FileStatus.WAIT)
                .build());

        // 도서 생성
        Book book = Book.builder()
                .publisher(optionalPublisher.get())
                .title(request.getTitle())
                .author(request.getAuthor())
                .price(request.getPrice())
                .introduction(request.getIntroduction())
                .filePath(filePath)
                .bigCategory(optionalBigCategory.get())
                .smallCategory(optionalSmallCategory.get())
                .authorInfo(request.getAuthorInfo())
                .fileInfo(fileInfo)
                .status(BookStatus.WAIT)
                .build();

        return bookRepository.save(book);
    }

    public Book update(BookUpdateRequest request, Book book) {
        return null;
    }

    @Transactional
    public Book updateState(String status, Book book) throws Exception {
        Map<String, Object> jsonData = objectMapper.readValue(status, new TypeReference<Map<String, Object>>() {});
        String bookStatus = jsonData.get("status").toString();
        // 책 상태 변경
        book.setStatus(BookStatus.valueOf(bookStatus));
        return bookRepository.save(book);
    }

    public void delete(Book book) {
    }
}
