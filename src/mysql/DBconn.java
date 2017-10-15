package mysql;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconn {
	private String url = "jdbc:mysql://localhost:3306/bookdb?characterEncoding=utf-8";
	private String username = "root";
	private String  password = "au87bt49";
	public Connection  GetConn() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		conn = DriverManager.getConnection(url, username, password);
		return conn;
	}
}
