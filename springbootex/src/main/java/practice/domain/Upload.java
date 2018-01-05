package practice.domain;

import java.util.Date;

public class Upload {
	private int uploadNo;
	private String fileName;
	private String newFileName;
	private String filePath;
	private Date uploadDate;
	private Date updateDate;
	private boolean delCheck;
	private int branchNo;
	


	@Override
	public String toString() {
		return "Upload [uploadNo=" + uploadNo + ", fileName=" + fileName + ", newFileName=" + newFileName
				+ ", filePath=" + filePath + ", uploadDate=" + uploadDate + ", updateDate=" + updateDate + ", delCheck="
				+ delCheck + ", branchNo=" + branchNo + "]";
	}

	public int getBranchNo() {
		return branchNo;
	}
	
	public void setBranchNo(int branchNo) {
		this.branchNo = branchNo;
	}

	public int getUploadNo() {
		return uploadNo;
	}

	public void setUploadNo(int uploadNo) {
		this.uploadNo = uploadNo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getNewFileName() {
		return newFileName;
	}

	public void setNewFileName(String newFileName) {
		this.newFileName = newFileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public boolean isDelCheck() {
		return delCheck;
	}

	public void setDelCheck(boolean delCheck) {
		this.delCheck = delCheck;
	}

}
