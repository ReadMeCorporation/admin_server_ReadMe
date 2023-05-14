package shop.readmecorp.adminserverreadme.modules.bookdeletelist.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.book.repository.BookRepository;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.entity.BookDeleteList;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.enums.BookDeleteListStatus;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.repository.BookDeleteListRepository;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.request.BookDeleteListSaveRequest;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;

import java.util.List;
import java.util.Optional;

@Service
public class BookDeleteListService {

    private final FileRepository fileRepository;
    private final BookDeleteListRepository bookDeleteListRepository;
    private final BookRepository bookRepository;

    public BookDeleteListService(FileRepository fileRepository, BookDeleteListRepository bookDeleteListRepository, BookRepository bookRepository) {
        this.fileRepository = fileRepository;
        this.bookDeleteListRepository = bookDeleteListRepository;
        this.bookRepository = bookRepository;
    }

    @Transactional
    public BookDeleteList save(BookDeleteListSaveRequest request, Integer bookId) {
        Optional<Book> optionalBook = bookRepository.findById(bookId);
        if (optionalBook.isEmpty()){
            throw new CustomException(BookConst.notFound);
        }
        Book book = optionalBook.get();
        String coverUrl = "";
        // 파일정보 불러오기
        FileInfo fileInfoCover = book.getCover();
        // 파일정보에 있는 파일 불러오기
        List<File> coverFiles = fileRepository.findByFileInfo(fileInfoCover);

        // 파일에 있는 url을 변수에 입력
        for (File file : coverFiles) {
            coverUrl = file.getFileUrl();
        }
        // 삭제요청 생성
        BookDeleteList bookDeleteList = BookDeleteList.builder()
                .book(book)
                .content(request.getContent())
                .coverUrl(coverUrl)
                .status(BookDeleteListStatus.ACTIVE)
                .build();

        // 도서 상태변경
        book.setStatus(BookStatus.DELETEREQUEST);
        return bookDeleteListRepository.save(bookDeleteList);
    }

}
