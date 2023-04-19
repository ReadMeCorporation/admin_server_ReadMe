package shop.readmecorp.adminserverreadme.modules.book.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.request.BookUpdateRequest;

import java.util.Optional;

@Service
public class BookService {


    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Page<Book> getPage(Pageable pageable) {
        return bookRepository.findAll(pageable);
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

    public void delete(Book book) {
    }
}
