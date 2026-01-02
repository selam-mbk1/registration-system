<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <h2>Register Student</h2>
    <form action="register" method="post">
        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Year:</label>
        <input type="text" name="year" required>

        <input type="submit" value="Register">
    </form>
    <a href="students">View Registered Students</a>
</div>
</body>
</html>
