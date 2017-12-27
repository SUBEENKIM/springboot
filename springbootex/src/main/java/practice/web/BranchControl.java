package practice.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import practice.domain.Branch;
import practice.service.BranchService;
import practice.service.FileUploadService;

@Controller
@RequestMapping("/branch")
public class BranchControl {

	@Autowired
	BranchService branchService;
	@Autowired
	ServletContext servletContext;
	@Autowired
	FileUploadService fileUploadService;

	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "5") int pageSize,
			Model model) throws Exception {

		List<Branch> list = branchService.list(pageNo, pageSize);
		model.addAttribute("list", list);

		return "branch/list";
	}

	@RequestMapping("add")
	public String add(Branch branch, MultipartFile[] photo) throws Exception {
		ArrayList<String> photoList = new ArrayList<>();
		for (MultipartFile fileItem : photo) {
			String filename = fileUploadService.save(fileItem);
			if (filename == null)
				continue;
			photoList.add(filename);
		}
		branch.setPhotoList(photoList);
		branchService.add(branch);
		return "redirect:list.do";
	}

	@RequestMapping("detail")
	public String detail(int no, Model model) throws Exception {
		Branch branch = branchService.get(no);
		if (branch == null) {
			throw new Exception(no + "번 회원이 없습니다.");
		}
		model.addAttribute("branch", branch);
		return "branch/detail";

	}
	
	@RequestMapping("update")
	  public String update(
	      Branch branch, 
	      MultipartFile[] photo) throws Exception {
	    ArrayList<String> photoList = new ArrayList<>();
	    for (MultipartFile fileItem : photo) {
	      String filename = fileUploadService.save(fileItem);
	      if (filename == null) continue;
	      photoList.add(filename);
	    }
	    branch.setPhotoList(photoList); // 업로드 한 사진 파일명을 저장한다.
	    
	    branchService.update(branch);
	    return "redirect:list.do";
	  }
	
	  @RequestMapping("delete")
	  public String delete(int no) throws Exception {
	    branchService.remove(no);
	    return "redirect:list.do";
	  }  

}
