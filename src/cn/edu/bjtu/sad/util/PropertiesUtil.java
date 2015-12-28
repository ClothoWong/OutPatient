package cn.edu.bjtu.sad.util;


import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtil {
	
	private static String DataBase = null;
	private static String DBAddress = null;
	private static String DBUserName = null;
	private static String DBPassword = null;
	private static String DBPort = null;
	
	

	public static void loadProperties() {
		Properties prop = new Properties();
		try {
			InputStream is = PropertiesUtil.class.getResourceAsStream("init.properties");
			prop.load(is);
			DataBase = prop.getProperty("DataBase");
			DBAddress = prop.getProperty("DBAddress");
			DBUserName = prop.getProperty("DBUserName");
			DBPassword = prop.getProperty("DBPassword");
			DBPort = prop.getProperty("DBPort");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}              
	}



	public static String getDBAddress() {
		return DBAddress;
	}



	public static void setDBAddress(String dBAddress) {
		DBAddress = dBAddress;
	}



	public static String getDBUserName() {
		return DBUserName;
	}



	public static void setDBUserName(String dBUserName) {
		DBUserName = dBUserName;
	}



	public static String getDBPassword() {
		return DBPassword;
	}



	public static void setDBPassword(String dBPassword) {
		DBPassword = dBPassword;
	}



	public static String getDBPort() {
		return DBPort;
	}



	public static void setDBPort(String dBPort) {
		DBPort = dBPort;
	}
	
	public static String getDataBase() {
		return DataBase;
	}



	public static void setDataBase(String dataBase) {
		DataBase = dataBase;
	}
}
	
