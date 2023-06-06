<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.javaee.sushiee.model.Person" %>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
>
<head>
    <title>Регистрация</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/darkstyle.css"/>
</head>
<body>
<header>
    <h1 style="padding-top: 4%">Фудзи-Суши</h1>
    <img src="../icon.png" alt="Логотип" class="logo">
</header>
<nav>
    <table class="navpanel">
        <tr>
            <td><a href="${pageContext.request.contextPath}/view/index.jsp" class="navtext">Главная</a></td>
            <td><a href="${pageContext.request.contextPath}/view/MenuPage.jsp" class="navtext">Меню</a></td>
            <td><a href="${pageContext.request.contextPath}/view/PromoPage.jsp" class="navtext">Скидки</a></td>
            <td><a href="${pageContext.request.contextPath}/view/RegistrationPage.jsp" class="navtext">Личный
                кабинет</a></td>
        </tr>
    </table>
</nav>
<FORM method="post" action="${pageContext.request.contextPath}/registration">
    <%Person person = (Person) request.getAttribute("Person");%>
    <p>Добро пожаловать в личный кабинет!</p>
    <p>Ваши данные для входа: </p>
    <p>
        <br>Фамилия:
        <label>
            <%=person.getSurname()%>
        </label>
        <br>Имя:
        <label>
            <%=person.getName()%>
        </label>
        <br>Номер телефона:
        <label>
            <%=person.getPhoneNumber()%>
        </label>
        <br>Email:
        <label>
            <%=person.getEmail()%>
        </label>
        <br>
        <br>
    </p>
</FORM>
</body>
</html>