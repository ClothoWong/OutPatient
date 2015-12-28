package cn.edu.bjtu.sad.util;


import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;


/**
 * DBUtilFactory class description
 * This Class is the real Factory of DBUtilFactory.
 * @author sunshine
 */
public class MysqlDBUtilFactory extends DBUtilAbstractFactory{

	private Connection conn;
	
	
	/**
	 * getMysqlConn description
	 * This function return Mysql connection.
	 * @author sunshine
	 */
	public Connection getConn() {
		try {
			System.out.println("url:");
			PropertiesUtil.loadProperties();
			Class.forName("com.mysql.jdbc.Driver");
			//String url = "jdbc:mysql://127.0.0.1:3306/outpatient?useUnicode=true&amp;characterEncoding=UTF-8";
			String url = "jdbc:" + PropertiesUtil.getDataBase() + "://"
					+ PropertiesUtil.getDBAddress() + ":" + PropertiesUtil.getDBPort()
					+ "/outpatient?useUnicode=true&amp;characterEncoding=UTF-8";
			System.out.println(url);
            String username = PropertiesUtil.getDBUserName();
            String password = PropertiesUtil.getDBPassword();
            conn = (Connection) DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}

}
