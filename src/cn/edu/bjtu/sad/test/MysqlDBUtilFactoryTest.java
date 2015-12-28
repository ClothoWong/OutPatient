package cn.edu.bjtu.sad.test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import cn.edu.bjtu.sad.util.DBUtilFactory;
import cn.edu.bjtu.sad.util.MysqlDBUtilFactory;

public class MysqlDBUtilFactoryTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void test() {
		new DBUtilFactory().getConn();
	}

}
