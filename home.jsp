<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .navbar {
            display: flex;
            justify-content: space-between;
            background-color: #333;
            padding: 1em;
            width: 100%;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>

<div class="w3-container w3-padding">
    <div class="navbar w3-bar w3-dark-grey">
        <a href="home.jsp" class="w3-button w3-hover-light-grey">Home</a>
        <a href="profile.jsp" class="w3-button w3-hover-light-grey">Profile</a>
        <a href="logout.jsp" class="w3-button w3-hover-light-grey">Logout</a>
    </div>
</div>

<div class="w3-container">
    <table class="w3-table w3-bordered w3-striped">
        <thead>
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Update/Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>${user.email}</td>
                    <td>${user.mobile}</td>
                    <td>
                        <a href="updatePage?id=${user.id}" class="w3-btn w3-blue">Update</a>
                        <a href="delete?id=${user.id}" class="w3-btn w3-red">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
