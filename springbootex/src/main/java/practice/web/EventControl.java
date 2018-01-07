package practice.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import practice.domain.Event;
import practice.domain.Template;

@Controller
@RequestMapping("/event")
public class EventControl {
	
//	@RequestMapping("add")
//	public String add(Event event, MultipartFile[] photo)throws Exception {
//		
////		List<Template> list = templateService.list();
////		model.addAttribute("list", list);
////		
////		eventService.add(event);
////
////		return "event/create";
//		
//	}

}
