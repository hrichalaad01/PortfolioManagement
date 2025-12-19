<%@ page import="java.sql.*,DB.DBconnector" %>

<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Contacts</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Contact Submissions</h2>

<table>
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>City</th>
    <th>Action</th>
</tr>

<%
Connection con = DBconnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM contacts");

while(rs.next()){
%>
<tr>
    <td><%=rs.getString("fullname")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("mobile")%></td>
    <td><%=rs.getString("city")%></td>
    <td>
        <a href="DeleteContact?id=<%=rs.getInt("id")%>"
           onclick="return confirm('Delete this contact?')">
           Delete
        </a>
    </td>
</tr>
<% } %>

</table>

</body>
</html>
