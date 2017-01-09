
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FeedBackForm extends HttpServlet {

public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    
    String name = (String)req.getSession().getAttribute("name");
    String batch = (String)req.getSession().getAttribute("Batch");
    String course =(String)req.getSession().getAttribute("course");
    String center =(String)req.getSession().getAttribute("center");
    String prog = (String)req.getSession().getAttribute("prog");
    String tprog = (String)req.getSession().getAttribute("tprog");
    String ttrate =req.getParameter("ttrate");
    
    
   // int a = Integer.parseInt(rating);
    Connection conn = null;
    PreparedStatement stmt = null;
    //ResultSet rs = null;
    
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","shireesh");     
        
        stmt = conn.prepareStatement("insert into feedback1(name, batch, course, center, prog, tprog, ttrate) values(?,?,?,?,?,?,?)");
        
        stmt.setString(1,name);
        stmt.setString(2,batch);
        stmt.setString(3,course);
        stmt.setString(4,center);
        stmt.setString(5,prog);
        stmt.setString(6,tprog);
        stmt.setString(7,ttrate);
        
        int i = stmt.executeUpdate();
        if(i>0){
        	RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Logout.html");
			requestDispatcher.include(req, res);
        }
        else{
        	out.println("<h1><center>Inserted Unsuccessfully</center></h1>");              
        }
        //out.println("If you want to give another feedback... <a href = page1.jsp>click here</a>");
    }
    catch(Exception e) {
    	out.println(e);
    }
}
}
