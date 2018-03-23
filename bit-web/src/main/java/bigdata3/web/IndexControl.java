package bigdata3.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexControl {
	
	
	@RequestMapping("main")
	public String form() {
		return "index";
	}
	
	
	@RequestMapping("storeinfo")
	public String storeinfo() {
		return "storeinfo";
	}
	
	@RequestMapping("chatbot")
	public String chatbot() {
		return "chatbot";
	}


}
