package shop.readmecorp.adminserverreadme.modules.notice.service;

import com.amazonaws.services.s3.model.ObjectMetadata;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.common.util.ParseMultipart;
import shop.readmecorp.adminserverreadme.common.util.S3Upload;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileStatus;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileType;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileInfoRepository;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;
import shop.readmecorp.adminserverreadme.modules.notice.NoticeConst;
import shop.readmecorp.adminserverreadme.modules.notice.dto.NoticeDTO;
import shop.readmecorp.adminserverreadme.modules.notice.entity.Notice;
import shop.readmecorp.adminserverreadme.modules.notice.enums.NoticeStatus;
import shop.readmecorp.adminserverreadme.modules.notice.repository.NoticeRepository;
import shop.readmecorp.adminserverreadme.modules.notice.request.NoticeSaveRequest;
import shop.readmecorp.adminserverreadme.modules.notice.response.NoticeResponse;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class NoticeService {

    private final NoticeRepository noticeRepository;
    private final FileInfoRepository fileInfoRepository;
    private final FileRepository fileRepository;
    private final ObjectMapper objectMapper;
    private final S3Upload s3Upload;


    public NoticeService(NoticeRepository noticeRepository, FileInfoRepository fileInfoRepository, FileRepository fileRepository, ObjectMapper objectMapper, S3Upload s3Upload) {
        this.noticeRepository = noticeRepository;
        this.fileInfoRepository = fileInfoRepository;
        this.fileRepository = fileRepository;
        this.objectMapper = objectMapper;
        this.s3Upload = s3Upload;
    }

    public PageImpl<?> getNotices(Pageable pageable) {

        Page<Notice> page = noticeRepository.findAll(pageable);
        List<NoticeDTO> content = page.getContent()
                .stream()
                .map(Notice::toDTO)
                .collect(Collectors.toList());

        for (int i = 0; i < content.size(); i++) {
            File imageFiles = fileRepository.findByFileInfo_Id(page.getContent().get(i).getImage().getId());
            content.get(i).setImageFile(imageFiles.toDTO());
        }

        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public NoticeResponse getNoticeWithImage(Integer id) {

        var optionalNotice = noticeRepository.findById(id);
        if (optionalNotice.isEmpty()){
            throw new Exception400(NoticeConst.notFound);
        }

        Notice notice = optionalNotice.get();
        NoticeResponse noticeResponse = notice.toResponse();

        File imageFile = fileRepository.findByFileInfo_Id(notice.getImage().getId());

        noticeResponse.setImageUrl(imageFile.getFileUrl());

        return noticeResponse;
    }

    @Transactional
    public Notice save(NoticeSaveRequest request) {

        // fileInfo 생성
        FileInfo imageFileInfo = fileInfoRepository.save(FileInfo.builder().type(FileType.NOTICE_IMAGE).build());

        String imageUrl = "";
        Integer imageSize = 0;

        ObjectMetadata objMeta = new ObjectMetadata();
        try {
            imageUrl += s3Upload.upload(request.getNoticeImage(), "noticeimage/");
            imageSize = request.getNoticeImage().getInputStream().available();

        } catch (IOException ioException) {
            ioException.printStackTrace();
        }

        // 파일생성에 필요한 fileName, fileUrl 만들기
        String imageName= request.getNoticeImage().getOriginalFilename(); // 이미지 파일이름

        // 파일 생성
        fileRepository.save(File.builder()
                .fileInfo(imageFileInfo)
                .fileName(imageName)
                .fileUrl(imageUrl)
                .fileSize(imageSize)
                .extension(ParseMultipart.getFileExtension(request.getNoticeImage()))
                .status(FileStatus.ACTIVE)
                .build());

        // 공지 생성
        Notice notice = Notice.builder()
                .title(request.getTitle())
                .content(request.getContent())
                .image(imageFileInfo)
                .status(NoticeStatus.ACTIVE)
                .build();

        return noticeRepository.save(notice);
    }

    @Transactional
    public Notice updateState(String status, Notice notice) throws Exception{
        Map<String, Object> jsonData = objectMapper.readValue(status, new TypeReference<Map<String, Object>>() {});
        String noticeStatus = jsonData.get("status").toString();
        // 공지 상태 변경
        notice.setStatus(NoticeStatus.valueOf(noticeStatus));
        return noticeRepository.save(notice);
    }

    public Optional<Notice> getNotice(Integer id) {
        return noticeRepository.findById(id);
    }


}
