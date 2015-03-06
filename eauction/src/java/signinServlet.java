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
public class signinServlet extends HttpServlet {
    String c,d,e;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
             HttpServletRequest httpRequest = (HttpServletRequest) request;
             HttpSession session = httpRequest.getSession();

            if(email.equals("admin@admin.com") && password.equals("admin")){
                session.setAttribute("email1",email);
                response.sendRedirect("admin.jsp");
             
            }
            else{
            Connection con = null;
            ResultSet rst = null;
            Statement st;
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(signinServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                con = DriverManager.getConnection("jdbc:odbc:register");
            } catch (SQLException ex) {
                Logger.getLogger(signinServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            st = con.createStatement();
            rst = st.executeQuery("select * from userregister where Email='"+email+"' and Password='"+password+"'");
           
             
               if(rst.next())
               {
                
                session.setAttribute("UserName", rst.getString(1));
                session.setAttribute("email", rst.getString(2));
                session.setAttribute("Password",rst.getString(3));
                session.setAttribute("Phone",rst.getString(4));
                session.setAttribute("Country",rst.getString(5));
               
                response.sendRedirect("afterlogin.jsp");
           }
         else{
              response.sendRedirect("signin.jsp");
             }
        
            }}catch  (SQLException ex) {
            Logger.getLogger(signinServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

        }

             
                
        
            


            
            
    

   
