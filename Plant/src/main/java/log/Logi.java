package log;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException; 
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Logi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/loges","root","accord");
			PreparedStatement ps=con.prepareStatement("select uname from login where uname=? and password=?");
			String n=request.getParameter("txtname");
			String p=request.getParameter("txtpass");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet os=ps.executeQuery();
			if(os.next()) {
				RequestDispatcher jj=request.getRequestDispatcher("Medicine.jsp");
				jj.forward(request, response);
			}
			else {
				out.println("<font color=red size =18>Failed");
				out.println("<a href=Log.jsp>Try Again</a>");
				
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		};
			
		}
	}


