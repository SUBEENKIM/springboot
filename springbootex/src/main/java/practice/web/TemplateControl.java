package practice.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/template")
public class TemplateControl {
	
	@RequestMapping("create")
	public void form() {
	}

	
}
