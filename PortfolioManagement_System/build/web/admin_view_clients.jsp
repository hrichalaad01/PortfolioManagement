<%@ page import="java.util.*,Model.ClientModel,DTO.ClientDTO" %>

<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>View Clients</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Client Management</h2>

<table>
<tr>
    <th>ID</th>
    <th>Image</th>
    <th>Name</th>
    <th>Designation</th>
    <th>Description</th>
    <th>Action</th>
</tr>

<%
ArrayList<ClientDTO> clients = ClientModel.getAll();
for(ClientDTO c : clients){
%>
<tr>
    <td><%= c.getId() %></td>
    <td><img src="uploads/<%= c.getImage() %>" width="80"></td>
    <td><%= c.getName() %></td>
    <td><%= c.getDesignation() %></td>
    <td><%= c.getDescription() %></td>
    <td>
        <a href="edit_client.jsp?id=<%=c.getId()%>">Edit</a> |
        <a href="DeleteClient?id=<%=c.getId()%>"
           onclick="return confirm('Delete this client?')">Delete</a>
    </td>
</tr>
<% } %>

</table>

</body>
</html>
