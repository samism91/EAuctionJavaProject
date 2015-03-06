/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Statement;
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
public class WelcomeServlet extends HttpServlet {
   
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name =request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("pass");
        String phone=request.getParameter("phone");
        String country=request.getParameter("country");
        String usertype= request.getParameter("user");
        //creating the session
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession();
        session.setAttribute("name", name);
        session.setAttribute("email", email);
        session.setAttribute("password", password);
        session.setAttribute("phone", phone);
        session.setAttribute("country", country);
    
        Connection con = null;
        ResultSet rst = null;
        Statement st = null;


        try{

                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con=DriverManager.getConnection("jdbc:odbc:register");
                st=con.createStatement();
                rst = st.executeQuery("select * from userregister where Email='"+email+"'");
               
if(rst.next()){
               response.sendRedirect("signup.jsp");
               return;

}
            else{
  int j  = st.executeUpdate("insert into userregister values('" + name + "','" + email + "','" + password + "','" + phone + "','" + country + "')");
                        response.sendRedirect("signin.jsp");
            }
        }
        catch (ClassNotFoundException ex) {
     
            Logger.getLogger(WelcomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }            catch(SQLException se){
        }
        

                  
                   }
        
     } 
     

    

