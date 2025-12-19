<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Admin Dashboard</h2>

<div class="menu">
    <a href="admin_add_project.jsp">Add Project</a>
    <a href="admin_view_projects.jsp">View Projects</a>
    <a href="admin_add_client.jsp">Add Client</a>
    <a href="admin_view_clients.jsp">View Clients</a>
    <a href="admin_view_contacts.jsp">View Contacts</a>
    <a href="admin_view_subscribers.jsp">View Subscribers</a>
    <a href="AdminLogout">Logout</a>
</div>

</body>
</html>
