package practice.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import practice.domain.Branch;
import practice.domain.BranchMaster;
import practice.domain.Template;
import practice.service.BranchService;
import practice.service.EventService;

@Controller
@RequestMapping("/event")
public class EventControl {
	
	
	@Autowired
	BranchService branchService;
	
	@Autowired
	EventService eventService;
	
	
	@RequestMapping("eventRequestPage")
	public String eventRequestPage(HttpSession session, Model model)throws Exception {
		BranchMaster branchMaster = (BranchMaster) session.getAttribute("loginBranchMaster");
		List<Branch> branchList = branchService.listByBranchNo(branchMaster.getNo());
		model.addAttribute("branchList", branchList);
		
		List<Template> templateList = eventService.listByTemplate(branchList);
		
		return "redirect:../auth/index";
	}

}
