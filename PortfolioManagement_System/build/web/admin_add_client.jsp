<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("admin_login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Client</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<h2>Add Client</h2>

<form action="AddClient" method="post" enctype="multipart/form-data">
    <input type="file" name="image" required>
    <input type="text" name="name" placeholder="Client Name" required>
    <input type="text" name="designation" placeholder="Designation" required>
    <textarea name="description" placeholder="Client Description"></textarea>
    <button type="submit">Add Client</button>
</form>

</body>
</html>
