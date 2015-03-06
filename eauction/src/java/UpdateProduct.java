/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import sun.font.Script;

public class UpdateProduct extends HttpServlet {

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
  HttpServletRequest httpRequest = (HttpServletRequest) request;
  HttpSession session = httpRequest.getSession();
  String prod_name =(String) session.getAttribute("prod_name");
File savedFile = null;
PrintWriter out = response.getWriter();
String p_type="",p_bid_open_date="",p_bid_close_date="",
        p_detail="",p_prize="",itemName="";
List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
for (FileItem item : items) {
if (item.isFormField()) {
// Process regular form field (input type="text|radio|checkbox|etc", select, etc).

String fieldname = item.getFieldName();
String fieldvalue = item.getString();
// ... (do your job here)

if(fieldname.equals("p_prize")){
p_prize = fieldvalue;
}

if(fieldname.equals("p_detail")){
p_detail = fieldvalue;
}
if(fieldname.equals("p_bid_open_date")){
p_bid_open_date = fieldvalue;
}
if(fieldname.equals("p_bid_close_date")){
p_bid_close_date = fieldvalue;
}
}
else {
itemName = item.getName();
//where to upload the image
savedFile = new File("C:\\Users\\Samkit\\Documents\\NetBeansProjects\\eauction\\eauction\\web\\upload\\"+itemName);
System.out.println(savedFile);
item.write(savedFile);
}
}
 Connection con = null;
        ResultSet rst = null;
        Statement st = null;
        try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con=DriverManager.getConnection("jdbc:odbc:register");
                st=con.createStatement();
                 //Getting the date only
                   DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                   Date date = new Date();
                   String p_date = dateFormat.format(date);
                    System.out.println(p_date);
                   //Getting the time only
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
                + minute + ":" + second
                + " " + am_pm;
                System.out.println(p_time);
                   
                   

                


                  //Database Entry
                  
                 int j = st.executeUpdate("update Product_Registration1 set product_image_path='"+itemName+"', product_prize='"+p_prize+"', product_detail='"+p_detail+"', bid_open_date='"+p_bid_open_date+"', bid_close_date='"+p_bid_close_date+"'  where product_name='"+prod_name+"' ");
                 response.sendRedirect("myproducts.jsp");

                    
                      
        }
        catch (ClassNotFoundException ex) {

            Logger.getLogger(WelcomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }            catch(SQLException se){ se.printStackTrace();
        }catch(Exception e){e.printStackTrace();}
}catch (Exception e) {
        e.printStackTrace();
}}}












