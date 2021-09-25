<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Response</title>
</head>
<body>
    <div class="survey">
        <h1>Survey Response</h1>
        <p>Name: <c:out value="${name}"></c:out></p>
        <p>Dojo Location: <c:out value="${location}"></c:out></p>
        <p>Favorite Language: <c:out value="${language}"></c:out></p>
        <p>Comment: <c:out value="${comment}"></c:out></p>
    </div>
</body>
</html>