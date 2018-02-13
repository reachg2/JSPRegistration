<%-- 
    Document   : index
    Created on : Feb 9, 2018, 8:43:54 AM
    Author     : A2A Town
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        
        <style>
         
        </style>
    </head>
    <body>
        
         <%
            HttpSession ses = request.getSession();
            if(ses.getAttribute("error")!=null)
            {
                out.println("<font color='red'>");
                out.println("<h2>Sign Up Failed</h2>");
                out.println("</br>");
                out.println("------------------------------------");
                out.println("</br>");
                LinkedList<String> error = (LinkedList<String>)ses.getAttribute("error");
                for(String a:error)
                {
                    out.println(a); 
                    out.println("</br>");
                }
                ses.setAttribute("error", null);
                out.println("------------------------------------");
                out.println("</font>");
                out.println("</br></br></br>");    
            }
            %>
            <div >
        <form action="Validate.jsp">
            Username: <input type="text" name="user"/></br>
            Password: <input type="password" name="pass"/></br>
            Confirm Password: <input type="password" name="cpass"/></br>
            Date of birth: <input type="date" name="bday"/></br>
            Phone Number: <input type="number" name="pnum"/></br>
            Email: <input type="email" name="email"/></br>
            Interest: </br>
            <input type="checkbox" name="interest" value="Running" checked>Running</input></br>
            <input type="checkbox" name="interest" value="Swimming">Swimming</input></br>
            <input type="checkbox" name="interest" value="Reading">Reading</input></br>
            <input type="submit" value="Sign Up">
        </form>
            </div>
       
        
        
    </body>
</html>
