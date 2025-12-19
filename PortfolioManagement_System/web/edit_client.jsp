<%@ page import="java.sql.*,DB.DBconnector" %>

<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}

int id = Integer.parseInt(request.getParameter("id"));
Connection con = DBconnector.getConnection();
PreparedStatement ps = con.prepareStatement(
    "SELECT * FROM clients WHERE id=?"
);
ps.setInt(1, id);
ResultSet rs = ps.executeQuery();
rs.next();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Client</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Edit Client</h2>

<form action="UpdateClient" method="post">
    <input type="hidden" name="id" value="<%=id%>">

    <input type="text" name="name"
           value="<%=rs.getString("name")%>" required>

    <input type="text" name="designation"
           value="<%=rs.getString("designation")%>" required>

    <textarea name="description"><%=rs.getString("description")%></textarea>

    <button type="submit">Update Client</button>
</form>

</body>
</html>
