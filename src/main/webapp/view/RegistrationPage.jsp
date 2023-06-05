<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Person" scope="request" class="com.javaee.sushiee.model.Person"/>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:p="http://xmlns.jcp.org/jsf/passthrough"
      xmlns:f="http://xmlns.jcp.org/jsf/core">
<head>
    <title>Регистрация</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mystyle.css"/>
</head>
<body>
<%int a = 20;%>
<%= a%>
<FORM method="post" action="${pageContext.request.contextPath}/person">
    <p>Добро пожаловать на портал.
        <br>Регистрация
    </p>
    <p>
        <br>Фамилия:
        <label>
            <input type="text" name=userSurname>
        </label>
        <br>Имя:
        <label>
            <input type="text" name=userName>
        </label>
        <br>Номер телефона:
        <label>
            <input type="text" name=userPhoneNumber>
        </label>
        <br>Email:
        <label>
            <input type="text" name=userEmail>
        </label>
        <br>
        <br><input type="submit" name="registration" value="Зарегистрироваться">
        <br>
    </p>
</FORM>
</body>
</html>