package practice.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import practice.domain.Upload;

public interface UploadService {
	public String fileUpload(MultipartFile file, String newFileName/*, HttpSession session*/) throws Exception;
	//public void insert(Upload upload);
	
	//public void insert(int no, Upload upload);
	public Resource fileDownload(String fileName);
}
