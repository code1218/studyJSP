package chapter7;

import java.sql.*;

public class DriverTest {

	public static void main(String[] args) {
		Connection con;
		
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/web"/*데이터베이스 명*/, "root", "toor");
			System.out.println("Success");
		}catch(SQLException ex) {
			System.out.println("SQLException" + ex);
		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}

	}

}
