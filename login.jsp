<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            width: 300px;
        }
        .success-message {
            color: green;
            font-weight: bold;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="form-container w3-card w3-white w3-round w3-padding">
        <h2 class="w3-center">Login</h2>
        <c:if test="${empty fail}">
            <div class="success-message">${fail}</div>
        </c:if>
        <form action="first" method="post" class="w3-container">
            <div class="w3-section">
                <label for="username" class="w3-text-grey">Email:</label>
                <input type="text" id="username" name="email" class="w3-input w3-border" required>
            </div>
            <div class="w3-section">
                <label for="password" class="w3-text-grey">Password:</label>
                <input type="password" id="password" name="password" class="w3-input w3-border" required>
            </div>
            <div class="w3-section">
                <input type="submit" value="Login" class="w3-button w3-block w3-green w3-round">
            </div>
        </form>
    </div>
</body>
</html>
