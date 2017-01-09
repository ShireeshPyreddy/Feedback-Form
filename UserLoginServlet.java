
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UserLoginServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String mailid = request.getParameter("mailid");
		String password = request.getParameter("password");
		
		java.sql.Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet resultSet = null;
		
		 try {
		        try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","shireesh");     
		    
		        stmt = conn.prepareStatement("select * from login where mailid = ? and password = ? ");
		        
		        stmt.setString(1,mailid);
		        stmt.setString(2,password);
		        
		        resultSet = stmt.executeQuery();

		        if(resultSet!=null&&resultSet.next()){
		        	RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Main.jsp");
		        	requestDispatcher.include(request, response);
		        }
		        else{
		        	out.println("<h1><center>Please Enter The Correct MailID And Password<center></h1>");
		        }
		} 
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
