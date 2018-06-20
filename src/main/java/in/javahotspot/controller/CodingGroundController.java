package in.javahotspot.controller;

import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.javahotspot.entity.User;
import in.javahotspot.service.CodingGroundService;

@Controller
@RequestMapping("/codingground")
public class CodingGroundController {
	private CodingGroundService codingGroundService;
	
	public CodingGroundController(CodingGroundService codingGroundService) {
		this.codingGroundService = codingGroundService;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String redirectToHomePage() {
		return "redirect:/codingground/home";
	}
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String getHomePage() {
		return "HomePage.jsp";
	}
	
	@GetMapping("/challenge{challengeId}")
	public String getChallengePage(@PathVariable int challengeId) {
		return "Challenge" + challengeId + ".jsp";
	}
	
	@RequestMapping("/compile")
	public String compileSourceCode(@RequestParam String className, @RequestParam String editor1Content, HttpSession httpSession) throws ClassNotFoundException, InstantiationException, IllegalAccessException, MalformedURLException {
		User user = (User)httpSession.getAttribute("USERDATA");
		
		String serverPathToFile = httpSession.getServletContext().getRealPath("/")+"codesubmissions" + "/" + user.getId();
		File fileToCompile = codingGroundService.saveSourceFile(editor1Content, serverPathToFile, className);
		
		ArrayList<String> compilationErrors = codingGroundService.compileSourceCode(fileToCompile);
		if(compilationErrors == null) { 
			File classFile = new File(serverPathToFile);
			httpSession.setAttribute("CLASSFILE", classFile);
		}
		
		httpSession.setAttribute("COMPILATIONERRORS", compilationErrors);
				
		return "CompilationResults.jsp";
	}
	
	@RequestMapping(value = "/testcode")
	public String testCode(@RequestParam String challengeName, HttpSession httpSession) {
		LinkedHashMap<String, String> testResults = null;
		
		File classFile = (File)httpSession.getAttribute("CLASSFILE");
		
		if(challengeName.equals("SumOfDigits")) {
			testResults = codingGroundService.runTestsonChallenge1(classFile);
		} else if(challengeName.equals("DifferenceOfDigits")) {
			testResults = codingGroundService.runTestsonChallenge2(classFile);
		}
		
		httpSession.setAttribute("TESTRESULTS", testResults);
		
		return "TestResults.jsp";
	}
}