<%-- 
    Document   : Validate
    Created on : Feb 9, 2018, 8:58:19 AM
    Author     : A2A Town
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate</title>
    </head>
    <body>
        <%
             String user = request.getParameter("user");
             String pass = request.getParameter("pass");
             String cpass = request.getParameter("cpass");
             String phone = request.getParameter("pnum");
             String email = request.getParameter("email");
             String bday = request.getParameter("bday");
             LinkedList<String> error = new LinkedList<String>();
             if(user.isEmpty() || user == null)
             {
                 error.add("You must enter your username info!");
             }
             else if(user.matches(".*\\d+.*")||user.matches("[!@#$%&*()_+=|<>?{}\\[\\]~-]"))
             {
                 error.add("Username must not contain number or special character!");
             }
             if(pass.isEmpty() || pass==null)
             {
                 error.add("You must enter your password info!");
             }
             else if(pass.length()<6)
             {
                error.add("Your password must be 6 character long!");
             }
             else
             {
                  if(pass.equals(cpass))
                 {
                    if(!pass.matches(".*\\d+.*"))
                    {
                     error.add("Password must include at least one number!");
                    }
                    if(!pass.matches(".*[A-Z].*"))
                    {
                      error.add("Password must include at least one capital letter!");       
                    }
                  }
                 else
                {
                    error.add("Your confirm password does not match!");
                }
             }
             if(cpass.isEmpty() || cpass==null)
             {
                 error.add("You must enter confirm password!");
             }
             if(bday.isEmpty() || bday==null)
             {
                  error.add("You must enter your birthday info!");
             }
             if(phone.isEmpty() || phone==null)
             {
                  error.add("You must enter your phone info!");
             }
             else if(phone.length()>=9 && phone.length()<=14 )
             {
                 if(phone.matches(".*[a-z][A-Z].*") &&phone.matches("[!@#$%&*()_=|<>?{}\\[\\]~-]"))
                 {
                     error.add("Phone number must not include letter or special character except +!");
                 }
             }
             else
             {
                 error.add("Phone number must be between 9-13 digit!");
             }
             if(email.isEmpty()|| email==null)
             {
                  error.add("You must enter your email info!");
             }
             else if(!email.contains("."))
             {
                 error.add("Email Address is not valid!");
             }
             if(error==null || error.isEmpty())
             {
                 request.getRequestDispatcher("Success.jsp").forward(request, response);
             }
             else
             {
                 HttpSession ses = request.getSession();
                 ses.setAttribute("error", error);
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
            
            %>
    </body>
</html>
