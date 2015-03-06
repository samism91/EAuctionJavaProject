/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Samkit
 */
public class setthebidservlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpServletRequest httpRequest = (HttpServletRequest) request;
             HttpSession session = httpRequest.getSession();
              String product_name1= (String)session.getAttribute("prod_name");
              String strDate = "10/05/2012";
              String date_split[] = strDate.split("/");
              String user_name = (String)session.getAttribute("UserName");
              System.out.println(user_name);
              String latest_bid= request.getParameter("bid");
            
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	   //get current date time with Date()
	   Date date = new Date();
	  String date1 = dateFormat.format(date);
                   System.out.println(date1);

  Calendar calendar = new GregorianCalendar();
  Calendar cal = Calendar.getInstance();

  cal.set(Integer.parseInt(date_split[2]),Integer.parseInt(date_split[1]),Integer.parseInt(date_split[0]));
  System.out.println("DATE :"+cal.get(Calendar.YEAR));
  System.out.println("DATE :"+cal.get(Calendar.MONTH));
  System.out.println("DATE :"+cal.get(Calendar.DATE));
  Calendar currentcal = Calendar.getInstance();
   currentcal.set(currentcal.get(Calendar.YEAR),
currentcal.get(Calendar.MONTH), currentcal.get(Calendar.DAY_OF_MONTH));
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
if(cal.after(currentcal))
{

            Connection con11 = null;
            ResultSet rst11 = null;
            Statement  st11;
            int i= 0;
          
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                 con11 = DriverManager.getConnection("jdbc:odbc:register");
                 st11 = con11.createStatement();
                 rst11 = st11.executeQuery("select * from productwisebid where Product_Name='"+product_name1+"'");
                
                 while(rst11.next())
                 {
                   i++;
                 int f = st11.executeUpdate("UPDATE productwisebid SET Latest_Bid='"+latest_bid+"',User_Name='"+user_name+"',Bid_Date='"+date1+"',Bid_Time='"+p_time+"' WHERE Product_Name='"+product_name1+"'");
        int h = st11.executeUpdate("insert into bidding(Product_Name,Bid,User_Name,BidDate,BidTime) values('"+product_name1+"','"+latest_bid+"','"+user_name+"','"+date1+"','"+p_time+"')");
             response.sendRedirect("afterbidding.jsp");
                 }
                 if(i==0){
             int k = st11.executeUpdate("insert into productwisebid(Product_Name,Latest_Bid,User_Name,Bid_Date,Bid_Time) values('"+product_name1+"','"+latest_bid+"','"+user_name+"','"+date1+"','"+p_time+"')");
        int h = st11.executeUpdate("insert into bidding(Product_Name,Bid,User_Name,BidDate,BidTime) values('"+product_name1+"','"+latest_bid+"','"+user_name+"','"+date1+"','"+p_time+"')");
             response.sendRedirect("afterbidding.jsp");
                 }
           
 
            }
                  
else{

            out.println("bid is closed");
            }

         }finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(setthebidservlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(setthebidservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(setthebidservlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(setthebidservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
