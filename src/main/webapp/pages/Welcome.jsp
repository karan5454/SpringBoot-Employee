<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee List</title>
    <!-- Include Bootstrap CSS for styling (optional) -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Employee List</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="e" items="${employeeList}">
                    <tr>
                        <td>${e.sid}</td>
                        <td>${e.sname}</td>
                        <td>${e.semail}</td>
                        <td>${e.sdepartment}</td>
                        <td>
							<a href="edit?id=${e.sid}">Edit</a>| 
							<a href="del?id=${e.sid}">Delete</a>
							
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
