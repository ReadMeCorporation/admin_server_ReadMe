package shop.readmecorp.adminserverreadme.modules.bookdeletelist.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.entity.BookDeleteList;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.enums.BookDeleteListStatus;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.repository.BookDeleteListRepository;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.request.BookDeleteListSaveRequest;

import java.util.Optional;

@Service
public class BookDeleteListService {

    private final BookDeleteListRepository bookDeleteListRepository;
    private final BookRepository bookRepository;

    public BookDeleteListService(BookDeleteListRepository bookDeleteListRepository, BookRepository bookRepository) {
        this.bookDeleteListRepository = bookDeleteListRepository;
        this.bookRepository = bookRepository;
    }

    @Transactional
    public BookDeleteList save(BookDeleteListSaveRequest request, Integer bookId) {

        Optional<Book> optionalBook = bookRepository.findById(bookId);

        if (optionalBook.isEmpty()){
            throw new CustomException(BookConst.notFound);
        }

        // 삭제요청 생성
        BookDeleteList bookDeleteList = BookDeleteList.builder()
                .book(optionalBook.get())
                .content(request.getContent())
                .coverUrl(request.getBook().getCoverUrl())
                .status(BookDeleteListStatus.ACTIVE)
                .build();

        return bookDeleteListRepository.save(bookDeleteList);
    }

}
