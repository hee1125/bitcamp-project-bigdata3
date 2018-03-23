package bigdata3.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
	public String fileUpload(MultipartFile file, String newFileName) throws Exception;

	public Resource fileDownload(String fileName);
}
