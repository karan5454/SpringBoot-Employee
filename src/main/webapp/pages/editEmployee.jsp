<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Employee</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Edit Employee</h2>
        <form action="" method="post">
            <input type="hidden" name="id" value="${data.sid}">  <!-- Hidden field for ID -->
            
            <div class="form-group">
                <label for="sname">Name</label>
                <input type="text" name="sname" value="${data.sname}" required>
            </div>
            
            <div class="form-group">
                <label for="semail">Email</label>
                <input type="text" name="semail" value="${data.semail}" required>
            </div>
            
            <div class="form-group">
                <label for="sdepartment">Department</label>
                <input type="text" name="sdepartment" value="${data.sdepartment}" required>
            </div>
            
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
