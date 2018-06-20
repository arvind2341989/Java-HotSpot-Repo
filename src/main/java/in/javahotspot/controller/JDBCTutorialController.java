package in.javahotspot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jdbctutorial")
public class JDBCTutorialController {	
	@RequestMapping("/index")
	public String getHomePage() {
		return "HomePage.jsp";
	}
	
	@RequestMapping("/home")
	public String getMainHomePage() {
		return "redirect:/home";
	}
}