package in.javahotspot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/javatutorial")
public class JavaTutorialController {	
	@RequestMapping("/index")
	public String getHomePage() {
		return "HomePage.jsp";
	}
	
	@RequestMapping("/home")
	public String getMainHomePage() {
		return "redirect:/home";
	}
	
	@GetMapping("/topic{topicId}")
	public String getTopicPage(@PathVariable int topicId) {
		return "Topic" + topicId + ".jsp";
	}
}