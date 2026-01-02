<!DOCTYPE html>
<html>
<head>
    <title>Registered Students</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <h2>Registered Students</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Year</th>
        </tr>

        <%
            java.util.List<org.example.registrationsystem.model.Student> students =
                    (java.util.List<org.example.registrationsystem.model.Student>) request.getAttribute("students");

            if (students != null) {
                for (org.example.registrationsystem.model.Student s : students) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getYear() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4" style="text-align:center;">No students found.</td>
        </tr>
        <% } %>
    </table>

    <a href="register.jsp">Register New Student</a>
</div>
</body>
</html>
