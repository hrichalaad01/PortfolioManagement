<%@ page import="java.util.*,Model.ProjectModel,Model.ClientModel,DTO.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Company Portfolio</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <div class="top-bar">
    <a href="admin_login.jsp">Admin Login</a>
</div>
    
<h1>Our Projects</h1>
<div class="card-container">
<%
for(ProjectDTO p : ProjectModel.getAll()){
%>
<div class="card">
    <img src="uploads/<%=p.image%>">
    <h3><%=p.name%></h3>
    <p><%=p.description%></p>
</div>
<% } %>
</div>

<h1>Happy Clients</h1>
<div class="card-container">
<%
for(ClientDTO c : ClientModel.getAll()){
%>
<div class="card">
    <img src="uploads/<%=c.image%>">
    <h3><%=c.name%></h3>
    <p><b><%=c.designation%></b></p>
    <p><%=c.description%></p>
</div>
<% } %>
</div>

<h1>Contact Us</h1>
<form action="Contact" method="post">
    <input name="fullname" placeholder="Full Name">
    <input name="email" placeholder="Email">
    <input name="mobile" placeholder="Mobile">
    <input name="city" placeholder="City">
    <button type="submit">Submit</button>
</form>

<h1>Newsletter</h1>
<form action="Subscribe" method="post">
    <input type="email" name="email" placeholder="Email">
    <button>Subscribe</button>
</form>

<div class="footer">
    © 2025 Company Portfolio Management System
</div>


</body>
</html>
