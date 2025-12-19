<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Project</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Add Project</h2>

<form action="AddProject" method="post" enctype="multipart/form-data">
    <input type="file" name="image" required>
    <input type="text" name="name" placeholder="Project Name" required>
    <textarea name="description" placeholder="Project Description"></textarea>
    <button type="submit">Add Project</button>
</form>

</body>
</html>
