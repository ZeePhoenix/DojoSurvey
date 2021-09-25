<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Dojo Survey</title>
</head>
<body>
    <div class="survey">
        <h1>Dojo Survey Form</h1>   
        <form action="/formSubmit" method="POST">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name"><br>
            <label for="loc">Dojo Location:</label>
            <select name="loc" id="loc">
                <option value="San Jose">San Jose</option>
                <option value="Austin">Austin</option>
                <option value="San Francisco">San Francisco</option>
                <option value="New York">New York</option>
            </select><br>
            <label for="lang">Favorite Language:</label>
            <select name="lang" id="lang">
                    <option value="Java">Java</option>
                <option value="Python">Python</option>
                <option value="Javascript">Javascript</option>
                <option value="HTML">Html</option>
                <option value="C++">C++</option>
            </select><br>
            <label for="comment">Comment:</label>
            <textarea name="comment" id="comment" rows="4" cols="50"></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
