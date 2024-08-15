<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center">Registration Page</h2>
                <form action="next" method="post">
                    <div class="form-group">
                        <label for="sname">Name</label>
                        <input type="text" id="sname" name="sname" class="form-control" placeholder="Enter Name" required>
                    </div>
                    <div class="form-group">
                        <label for="semail">Email</label>
                        <input type="email" id="semail" name="semail" class="form-control" placeholder="Enter Email" required>
                    </div>
                    <div class="form-group">
                        <label for="sdepartment">Department</label>
                        <input type="text" id="sdepartment" name="sdepartment" class="form-control" placeholder="Enter Department" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
