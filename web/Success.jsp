<%-- 
    Document   : Success
    Created on : Feb 9, 2018, 11:23:06 AM
    Author     : A2A Town
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
             String pass = request.getParameter("pass");
             String dob = request.getParameter("bday");
             String phone = request.getParameter("pnum");
             String email = request.getParameter("email");
             String[] interest = request.getParameterValues("interest");
            %>
            
            <h1>Login Successful</h1>
            Username: <%=user%></br>
            Password: <%=pass%></br>
            Date of Birth: <%=dob%></br>
            Phone Number: <%=phone%></br>
            Email: <%=email%></br>
            Interest: </br>
            <%
                for(String a:interest)
                {
                    out.println(a);
                    out.println("</br>");
                }
            %>
            <form action="index.jsp">
                <input type="submit" value="logout">
            </form>
    </body>
</html>
