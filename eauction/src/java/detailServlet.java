/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Samkit
 */
public class detailServlet extends HttpServlet {
   
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
    } 

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession();

        try {
           String currentbid = request.getParameter("bid");
           Integer bidint = Integer.parseInt(currentbid);
          String productname = (String) session.getAttribute("productname");
          String User_Name = (String) session.getAttribute("UserName");


          //date code
           DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	   //get current date time with Date()
	   Date date = new Date();
	  String date1 = dateFormat.format(date);
                   System.out.println(date1);

  Calendar calendar = new GregorianCalendar();
  String am_pm;
  int hour = calendar.get(Calendar.HOUR);
  int minute = calendar.get(Calendar.MINUTE);
  int second = calendar.get(Calendar.SECOND);
  if(calendar.get(Calendar.AM_PM) == 0)
  am_pm = "AM";
  else
  am_pm = "PM";
  String p_time =  hour + ":"
+ minute + ":" + second + " " + am_pm;
                  System.out.println(p_time);
                  //date code end

           //out.print(detail.getBid());
            Connection con1 = null;
        ResultSet rst1 = null;
        Statement st1 = null;
        try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con1=DriverManager.getConnection("jdbc:odbc:register");
                st1=con1.createStatement();
                rst1 = st1.executeQuery("select * from bidding");
                        int j = st1.executeUpdate("insert into bidding(Product_Name,Bid,User_Name,BidDate,BidTime) values('"+productname+"','"+bidint+"','"+User_Name+"','"+date1+"','"+p_time+"')");
                        int d = st1.executeUpdate("update updatedbid set Bid='"+bidint+"' where Product_Name='"+productname+"'");
                        out.print("You have placed the bid of "+bidint+"for"+productname);
                        session.setAttribute("bidint",bidint);
                        response.sendRedirect("detail.jsp");
              }catch (Exception e) {
              out.println(e);
              }
       

        } finally {
            out.close();
        }
       
    }

    
}
