package in.javahotspot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
	@RequestMapping(value = {"/", "/home"})
	public String getHomePage() {
		return "HomePage.jsp";
	}
}