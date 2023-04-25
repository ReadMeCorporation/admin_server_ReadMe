package shop.readmecorp.adminserverreadme.modules.book.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.request.BookUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.enums.PublisherStatus;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherUpdateRequest;

import java.util.Optional;

@Service
public class BookService {


    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Page<Book> getBookList(Pageable pageable) {
        return bookRepository.findByStatusActiveOrDelete(BookStatus.ACTIVE,BookStatus.DELETE,pageable);
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
        book.setStatus(BookStatus.valueOf(request.getStatus()));
        return bookRepository.save(book);
    }

    public void delete(Book book) {
    }
}
