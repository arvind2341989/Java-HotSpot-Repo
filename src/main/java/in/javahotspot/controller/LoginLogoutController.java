package in.javahotspot.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.javahotspot.entity.User;
import in.javahotspot.service.UserService;

@Controller
public class LoginLogoutController {
	UserService userService;
	
	public LoginLogoutController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String processLogin(@RequestParam String emailAddress, @RequestParam String password, HttpSession httpSession) {
		User user = userService.loginUser(emailAddress, password);
		
		httpSession.setAttribute("USERDATA", user);
		
		return "LoginProcessStatus.jsp";
	}
	
	@RequestMapping("/logout")
	public String processLogout(HttpSession httpSession) {
		httpSession.invalidate();
		
		return "redirect:/home";
	}
}