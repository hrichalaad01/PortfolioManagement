<%@ page import="java.sql.*,DB.DBconnector" %>

<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Subscribers</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Newsletter Subscribers</h2>

<table>
<tr>
    <th>Email</th>
    <th>Action</th>
</tr>

<%
Connection con = DBconnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM subscribers");

while(rs.next()){
%>
<tr>
    <td><%=rs.getString("email")%></td>
    <td>
        <a href="DeleteSubscriber?id=<%=rs.getInt("id")%>"
           onclick="return confirm('Delete this subscriber?')">
           Delete
        </a>
    </td>
</tr>
<% } %>

</table>

</body>
</html>
