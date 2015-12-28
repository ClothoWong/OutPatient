package cn.edu.bjtu.sad.facade;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.bjtu.sad.model.User;
import cn.edu.bjtu.sad.util.DBUtilFactory;

/**
 * this class is a facade to check user access right
 * 
 * @author sunshine
 *
 */
public class LoginCheck {
	private static PreparedStatement ps;
	private static ResultSet rs;
	
	/**
	 * Check is user have access right
	 * @param user
	 * @return
	 */
	public boolean check(User user) {
		String sql = "select * from user where user_name = ? and password = ?;";
		Connection conn = new DBUtilFactory().getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			clearUp(conn);
			return false;
		}
	}
	
	private void clearUp(Connection conn) {
        try {
            if(rs != null){
                rs.close();
            }
            if(ps != null){
                ps.close();
            }
            if(conn != null){
                conn.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
