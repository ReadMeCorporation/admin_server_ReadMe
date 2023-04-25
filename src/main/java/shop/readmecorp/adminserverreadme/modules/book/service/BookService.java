package shop.readmecorp.adminserverreadme.modules.book.service;

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
    private final HeartRepository heartRepository;

    public BookService(BookRepository bookRepository, ReviewRepository reviewRepository, PublisherRepository publisherRepository, HeartRepository heartRepository) {
        this.bookRepository = bookRepository;
        this.reviewRepository = reviewRepository;
        this.publisherRepository = publisherRepository;
        this.heartRepository = heartRepository;
    }

    public Page<Book> getBookList(Pageable pageable) {
        return bookRepository.findByStatusActiveOrDelete(BookStatus.ACTIVE,BookStatus.DELETE,pageable);
    }

    //TODO 수정필요
    public List<PublishersBookListDTO> getPublishersBookList(Integer userId) {
        Optional<Publisher> publisher = publisherRepository.findById(userId);

        if (publisher.isEmpty()) {
            throw new Exception400(PublisherConst.notFound);
        }

        List<Book> books = bookRepository.findByUserId(userId);
        List<Review> reviews = reviewRepository.findByBookPublisherId(userId);

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

        return null;
    }

    public Book update(BookUpdateRequest request, Book book) {
        return null;
    }

    @Transactional
    public Book updateState(BookUpdateRequest request, Book book) {
        // 책 상태 변경
        book.setStatus(BookStatus.valueOf(request.getStatus()));
        return bookRepository.save(book);
    }

    public void delete(Book book) {
    }
}
