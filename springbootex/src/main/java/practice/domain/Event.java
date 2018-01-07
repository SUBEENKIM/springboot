package practice.domain;

import java.util.List;

public class Event {
	int no;
	int tpno;
	String type;
	String info;
	String content;
	String content2;
	String sdate;
	String edate;
	boolean delCheck;
	List<String> imageList;

	@Override
	public String toString() {
		return "Event [no=" + no + ", tpno=" + tpno + ", type=" + type + ", info=" + info + ", content=" + content
				+ ", content2=" + content2 + ", sdate=" + sdate + ", edate=" + edate + ", delCheck=" + delCheck
				+ ", imageList=" + imageList + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getTpno() {
		return tpno;
	}

	public void setTpno(int tpno) {
		this.tpno = tpno;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent2() {
		return content2;
	}

	public void setContent2(String content2) {
		this.content2 = content2;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public boolean isDelCheck() {
		return delCheck;
	}

	public void setDelCheck(boolean delCheck) {
		this.delCheck = delCheck;
	}

	public List<String> getImageList() {
		return imageList;
	}

	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}

}
