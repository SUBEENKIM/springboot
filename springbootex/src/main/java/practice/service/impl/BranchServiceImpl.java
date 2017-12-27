package practice.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import practice.dao.BranchDao;
import practice.domain.Branch;
import practice.service.BranchService; 

@Service
class BranchServiceImpl implements BranchService{

	@Autowired
	BranchDao branchDao;
	
	public List<Branch> list(int pageNo, int pageSize) throws Exception{
		HashMap<String, Object> valueMap = new HashMap<>();
		valueMap.put("startIndex", (pageNo - 1) * pageSize);
		valueMap.put("pageSize", pageSize);
		
		return branchDao.selectList(valueMap);
		  
	}
	  
	public Branch get(int no) throws Exception{
		return branchDao.selectOne(no);
		  
	}
	  
	public void add(Branch branch) throws Exception{
		branchDao.insert(branch);
		this.insertPhoto(branch.getNo(), branch.getPhotoList()); // 지점 사진 추가
	}
	  
	public void update(Branch branch) throws Exception {
		
		int count = branchDao.update(branch);
	    if (count < 1) {
	      throw new Exception(branch.getNo() + "번 지점을 찾을 수 없습니다.");
	    }
	    
	    // 지점 사진 갱신
	    branchDao.deletePhoto(branch.getNo()); // 지점의 모든 사진을 지운다.
	    this.insertPhoto(branch.getNo(), branch.getPhotoList()); // 지점 사진 추가
	  
	  }
	
	private void insertPhoto(int branchNo, List<String> photoPathList) {
	    HashMap<String,Object> valueMap = new HashMap<>();
	    valueMap.put("branchNo", branchNo);
	    
	    for (String photoPath : photoPathList) {
	      valueMap.put("photoPath", photoPath);
	      branchDao.insertPhoto(valueMap);
	    }
	  }
	  
	public void remove(int no) throws Exception{
		branchDao.deletePhoto(no);
	    int count = branchDao.delete(no);
	    if (count < 1) {
	      throw new Exception(no + "번 지점을 찾을 수 없습니다.");
	    }
	    
	    try {
	      count = branchDao.delete(no);
	    } catch (Exception e) {}
	}
}
