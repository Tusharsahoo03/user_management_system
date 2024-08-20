<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
</head>
<body>
<form:form action="update" modelAttribute="user" method="post">
    <div>
        <label>Name:</label>
        <form:input path="name"/>
    </div>
    <div>
        <label>Age:</label>
        <form:input path="age"/>
    </div>
    <div>
        <label>Mobile:</label>
        <form:input path="mobile"/>
    </div>
    <div>
        <label>Email:</label>
        <form:input path="email"/>
    </div>
    <div>
    <form:hidden path="id"/>
</div>
    <div>
        <label>Password:</label>
        <form:input path="password"/>
    </div>
    <div>
        <input type="submit" value="Update"/>
    </div>
</form:form>
</body>
</html>
