package in.javahotspot.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
	@RequestMapping(value = {"/", "/home"})
	public String getHomePage(HttpSession httpSession) {
		return "HomePage.jsp";
	}
}