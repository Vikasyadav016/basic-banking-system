<%-- 
    Document   : customerdata
    Created on : 11 Jan, 2021, 11:00:20 AM
    Author     : vikas
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <div class="table-responsive">
  <table class="table">
      <thead>
      <tr>
                <td>UID</td>
                <td>User Name</td>
                <td>E-mail</td>
                <td>Current Balance</td>
            </tr>
      </thead>
            <% 
    
          
   try { 
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs","root","vikas"); 
        Statement smt = con.createStatement(); //Create Statement to interact 
        ResultSet r = smt.executeQuery("select * from userdetails;"); 
        while (r.next()) { 
            %>
  </tbody>
    <tr>
        
        <td><%= r.getString(1) %></td>
         <td><%= r.getString(2) %></td>
          <td><%= r.getString(3) %></td>
           <td><%= r.getString(4) %></td>
    </tr>
  </tbody>
        
              <%
        } 
       
   } catch (Exception e) { 
        e.printStackTrace(); 
   } 
%> 

    
  </table>
</div>
        
    </body>
</html>
