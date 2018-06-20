package in.javahotspot.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import in.javahotspot.entity.User;

@Repository
public class UserDao extends HibernateDaoSupport {
	public UserDao(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}
	
	public int insertUser(User user) {
		int status = 0;
		
		getHibernateTemplate().setCheckWriteOperations(false);
		status = (Integer)getHibernateTemplate().save(user);
		
		return status;
	}
	
	public User selectUserByEmailAddressAndPassword(String emailAddress, String password) {
		User user = null;
		
		String hql = "FROM User user WHERE user.emailAddress=? AND user.password=?";			
		List<User> usersList = (List<User>) getHibernateTemplate().find(hql, emailAddress, password);
		
		if(!(usersList.isEmpty())) {
			User u = usersList.get(0); 
			user = new User();
			user.setId(u.getId());
			user.setFirstName(u.getFirstName());
			user.setLastName(u.getLastName());
			user.setEmailAddress(u.getEmailAddress());
		}
		
		return user;
	}
}