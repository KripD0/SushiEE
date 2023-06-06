<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.javaee.sushiee.model.Person" %>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
>
<head>
    <% String theme = null;
        String linkCSS = null;
        Cookie[] cookie = request.getCookies();
        for (Cookie cook : cookie) {
            if (cook.getName().equals("theme")) {
                theme = cook.getValue();
            }
        }
        if (theme.equals("peach")) {
            linkCSS = "../css/darkstyle.css";
        } else {
            linkCSS = "../css/mystyle.css";
        }%>
    <title>Регистрация</title>
    <link rel="stylesheet" href="<%=linkCSS%>"/>
</head>
<body>
<header>
    <img src="../icon.png" alt="Логотип" class="logo">
    <h1>Фудзи-Суши</h1>
</header>
<nav>
    <table style="width: 99%;" class="navpanel">
        <tr class="noborder">
            <td class="noborder"><a href="/FuJEE" class="navtext">Главная</a></td>
            <td class="noborder"><a href="/FuJEE/menu" class="navtext">Меню</a></td>
            <td class="noborder"><a href="/FuJEE/promo" class="navtext">Скидки</a></td>
            <td class="noborder"><a href="/FuJEE/registration" class="navtext">Личный кабинет</a></td>
        </tr>
    </table>
</nav>
<FORM method="post" action="${pageContext.request.contextPath}/FuJEE/registration">
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