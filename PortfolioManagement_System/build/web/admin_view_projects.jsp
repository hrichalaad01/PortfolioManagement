<%@ page import="java.util.*,Model.ProjectModel,DTO.ProjectDTO" %>

<%
/* Session Protection */
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>View Projects</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Project Management</h2>

<div style="text-align:center; margin-bottom:20px;">
    <a href="admin_add_project.jsp" style="
        background:#2563eb;
        color:white;
        padding:8px 14px;
        border-radius:6px;
        text-decoration:none;
        font-weight:600;">
        + Add New Project
    </a>
</div>

<table>
    <tr>
        <th>ID</th>
        <th>Image</th>
        <th>Project Name</th>
        <th>Description</th>
        <th>Action</th>
    </tr>

<%
ArrayList<ProjectDTO> projects = ProjectModel.getAll();

for (ProjectDTO p : projects) {
%>
    <tr>
        <td><%= p.getId() %></td>

        <td>
            <img src="uploads/<%= p.getImage() %>" width="80">
        </td>

        <td><%= p.getName() %></td>

        <td><%= p.getDescription() %></td>

        <td>
            <a href="edit_project.jsp?id=<%= p.getId() %>"
               style="color:#2563eb; font-weight:600;">
               Edit
            </a>
            |
            <a href="DeleteProject?id=<%= p.getId() %>"
               style="color:red; font-weight:600;"
               onclick="return confirm('Are you sure you want to delete this project?');">
               Delete
            </a>
        </td>
    </tr>
<%
}
%>

</table>

<div style="text-align:center; margin-top:30px;">
    <a href="admin_dashboard.jsp" style="
        text-decoration:none;
        background:#0f172a;
        color:white;
        padding:8px 16px;
        border-radius:6px;">
        ? Back to Dashboard
    </a>
</div>

</body>
</html>
