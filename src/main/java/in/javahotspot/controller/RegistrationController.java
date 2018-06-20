package in.javahotspot.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.javahotspot.entity.User;
import in.javahotspot.service.UserService;

@Controller
public class RegistrationController {
	UserService userService;
	
	public RegistrationController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute User user, HttpSession httpSession) {
		String serverPath = httpSession.getServletContext().getRealPath("/")+"codesubmissions";
		
		boolean status = userService.registerUser(user, serverPath);
		
		httpSession.setAttribute("STATUS", status);
		
		return "RegistrationProcessStatus.jsp";
	}
}