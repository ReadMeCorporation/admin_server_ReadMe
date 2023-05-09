package shop.readmecorp.adminserverreadme.modules.banner.service;


import com.amazonaws.services.s3.model.ObjectMetadata;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.util.ParseMultipart;
import shop.readmecorp.adminserverreadme.common.util.S3Upload;
import shop.readmecorp.adminserverreadme.modules.banner.dto.BannerDTO;
import shop.readmecorp.adminserverreadme.modules.banner.entity.Banner;
import shop.readmecorp.adminserverreadme.modules.banner.enums.BannerStatus;
import shop.readmecorp.adminserverreadme.modules.banner.repository.BannerRepository;
import shop.readmecorp.adminserverreadme.modules.banner.request.BannerSaveRequest;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileStatus;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileType;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileInfoRepository;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class BannerService {

    private final BannerRepository bannerRepository;
    private final FileInfoRepository fileInfoRepository;
    private final FileRepository fileRepository;
    private final ObjectMapper objectMapper;
    private final S3Upload s3Upload;

    public BannerService(BannerRepository bannerRepository, FileInfoRepository fileInfoRepository, FileRepository fileRepository, ObjectMapper objectMapper, S3Upload s3Upload) {
        this.bannerRepository = bannerRepository;
        this.fileInfoRepository = fileInfoRepository;
        this.fileRepository = fileRepository;
        this.objectMapper = objectMapper;
        this.s3Upload = s3Upload;
    }

    public PageImpl<?> getBanners(Pageable pageable) {

        Page<Banner> page = bannerRepository.findAll(pageable);
        List<BannerDTO> content = page.getContent()
                .stream()
                .map(Banner::toDTO)
                .collect(Collectors.toList());

        for (int i = 0; i < content.size(); i++) {
            File imageFiles = fileRepository.findByFileInfo_Id(page.getContent().get(i).getImage().getId());
            content.get(i).setImageFile(imageFiles.toDTO());
        }

        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public Optional<Banner> getBanner(Integer id) {
        return bannerRepository.findById(id);
    }

    @Transactional
    public Banner save(BannerSaveRequest request) {

        // fileInfo 생성
        FileInfo imageFileInfo = fileInfoRepository.save(FileInfo.builder().type(FileType.BANNER_IMAGE).build());

        String imageUrl = "";
        Integer imageSize = 0;

        ObjectMetadata objMeta = new ObjectMetadata();

        try {
            imageUrl += s3Upload.upload(request.getBannerImage(), "bannerimage/");
            imageSize = request.getBannerImage().getInputStream().available();

        } catch (IOException ioException) {
            ioException.printStackTrace();
        }

        // 파일생성에 필요한 fileName, fileUrl 만들기
        String imageName= request.getBannerImage().getOriginalFilename(); // 이미지 파일이름

        // 파일 생성
        fileRepository.save(File.builder()
                .fileInfo(imageFileInfo)
                .fileName(imageName)
                .fileUrl(imageUrl)
                .fileSize(imageSize)
                .extension(ParseMultipart.getFileExtension(request.getBannerImage()))
                .status(FileStatus.ACTIVE)
                .build());

        // 배너 생성
        Banner banner = Banner.builder()
                .image(imageFileInfo)
                .status(BannerStatus.ACTIVE)
                .build();

        return bannerRepository.save(banner);
    }

    @Transactional
    public Banner updateState(String status, Banner banner) throws Exception{
        Map<String, Object> jsonData = objectMapper.readValue(status, new TypeReference<Map<String, Object>>() {});
        String bannerStatus = jsonData.get("status").toString();
        // 공지 상태 변경
        banner.setStatus(BannerStatus.valueOf(bannerStatus));
        return bannerRepository.save(banner);
    }

}
