<%-- 
    Document   : create
    Created on : 19 Sep 2022, 22:10:34
    Author     : User
--%>

<%
    Cookie adminEmail = new Cookie("DRIVEREMAIL", request.getParameter("email"));
    
    adminEmail.setPath("/");
    adminEmail.setMaxAge(60 * 60 * 24);
    response.addCookie(adminEmail);
    
    response.sendRedirect("/gocheeta-client/driver/driver.jsp");
%>
