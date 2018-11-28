package bookshop.bean;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class MngrDBBean {
	//싱글톤 DBBean 생성
	private static MngrDBBean instance = new MngrDBBean();
	public static MngrDBBean getInstance()	{return instance;}
	private MngrDBBean() {}
	
	//커넥션풀 가져오는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/test");
		return ds.getConnection();
	}
	
	public int userCheck(String id, String passwd) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int x=-1;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement("select admin_pass from admin where admin_id=?");
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String dbpass=rs.getString("admin_pass");
				if(passwd.equals(dbpass)) {
					x=1;
				}else {
					x=0;
				}
			}else {
				x=-1;
			}//rs.next
		} catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs!=null) try {rs.close();} catch(SQLException ex) {}
			if(pstmt!=null) try {rs.close();} catch(SQLException ex) {}
			if(conn!=null) try {rs.close();} catch(SQLException ex) {}
		}
		return x;
	}//userCheck
}
