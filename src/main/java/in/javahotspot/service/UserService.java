package in.javahotspot.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;

import in.javahotspot.dao.UserDao;
import in.javahotspot.entity.User;

@Service
public class UserService {
	private UserDao userDao;
	
	public UserService(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean registerUser(User user, String serverPath) {
		int status = userDao.insertUser(user);
		
		if(status != 0) {
			serverPath += "/" + status;
			createCodeSubmissionsDirectory(serverPath);
			
			return true;
		} else {
			return false;
		}
	}
	
	public void createCodeSubmissionsDirectory(String serverPath) {
		File codeSubmissionDirectory = new File(serverPath);
		
		codeSubmissionDirectory.mkdir();
	}
	
	public User loginUser(String emailAddress, String password) {
		User user = userDao.selectUserByEmailAddressAndPassword(emailAddress, password);
		
		return user;
	}
}