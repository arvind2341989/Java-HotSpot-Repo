package in.javahotspot.listener;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class SCListener implements ServletContextListener {
	public void contextInitialized(ServletContextEvent sce) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javahotspot_db", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptogo_javahotspot_db", "cryptogo_jhsroot", "jhsroot@123");
			stmt = con.createStatement();
			
			String query = "SELECT usr_id FROM user_information;";
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				String serverPathToFile = sce.getServletContext().getRealPath("/")+"codesubmissions" + "/" + rs.getInt(1);
				new File(serverPathToFile).mkdir();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(stmt != null) {
					stmt.close();
				}
				if(con != null) {
					con.close();
				}
			} catch(SQLException sqle) {
				sqle.printStackTrace();
			}
		}
    }	
	
	public void contextDestroyed(ServletContextEvent sce) { 
    }
}