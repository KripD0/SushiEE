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
    <title>Вход в личный кабинет</title>
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
            <td><a href="${pageContext.request.contextPath}/view/PromoPage.jsp"  class="navtext">Скидки</a></td>
            <td><a href="${pageContext.request.contextPath}/view/RegistrationPage.jsp"  class="navtext">Личный кабинет</a></td>
        </tr>
    </table>
</nav>
<FORM method="post" action="${pageContext.request.contextPath}/registration">
    <h1>Авторизация:
    </h1>
    <table class="noborder">
        <tr class="noborder" >
            <td class="noborder" style="text-align: right;">Фамилия:</td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userSurname" placeholder="Иванов">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Имя:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userName" placeholder="Иван">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Номер телефона:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userPhoneNumber" placeholder="+7(777)777-77-77">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Email:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userEmail placeholder="myemail@site.com">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td colspan="2"  class="noborder ">
                <input type="submit" name="registration" value="Авторизоваться" style="width: 50%; height: 10%">
            </td>
        </tr>
    </table>
</FORM>
</body>
</html>