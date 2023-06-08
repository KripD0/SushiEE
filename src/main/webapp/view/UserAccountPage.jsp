<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.javaee.sushiee.model.Person" %>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html>
<html>
<head>
    <% String theme = "peach";
        String linkCSS;
        Cookie[] cookie = request.getCookies();
        if (cookie != null) {
            for (Cookie cook : cookie) {
                if (cook.getName().equals("theme")) {
                    theme = cook.getValue();
                }
            }
        }
        if (theme.equals("peach")) {
            linkCSS = "../css/mystyle.css";
        } else {
            linkCSS = "../css/darkstyle.css";
        }%>
    <title>Фудзи-Суши: Аккаунт</title>
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
            <td class="noborder"><a href="${pageContext.request.contextPath}/FuJEE" class="navtext">Главная</a></td>
            <td class="noborder"><a href="${pageContext.request.contextPath}/FuJEE/menu" class="navtext">Меню</a></td>
            <td class="noborder"><a href="${pageContext.request.contextPath}/FuJEE/promo" class="navtext">Скидки</a>
            </td>
            <td class="noborder"><a href="${pageContext.request.contextPath}/FuJEE/account" class="navtext">Личный
                кабинет</a></td>
        </tr>
    </table>
</nav>
<form method="post" action="${pageContext.request.contextPath}/FuJEE/registration">
    <%Person person = (Person) request.getAttribute("Person");%>
    <section><h2>Добро пожаловать в личный кабинет!</h2>
        <table>
            <tr>
                <td class="noborder"> Фамилия:</td>
                <td><%=person.getSurname()%>
                </td>
            </tr>
            <tr>
                <td class="noborder"> Имя:</td>
                <td><%=person.getName()%>
                </td>
            </tr>
            <tr>
                <td class="noborder"> Номер телефона:</td>
                <td><%=person.getPhoneNumber()%>
                </td>
            </tr>
            <tr>
                <td class="noborder"> Электронная почта:</td>
                <td><%=person.getEmail()%>
                </td>
            </tr>
            <tr>
                <td class="noborder"> Пароль:</td>
                <td><%=person.getPassword()%>
                </td>
            </tr>
        </table>
    </section>
</form>
<section>
    <form method="get" action="/FuJEE/exitAccount">
        <label>
            <input type="submit" name="exitAccount" value="Выйти из аккаунта" style="width: 45%; height: 10%;">
        </label>
    </form>
</section>
<section>
    <form method="get" action="/FuJEE/changeAccount">
        <input type="submit" name="updateAccount" value="Изменить данные аккаунта" style="width: 45%; height: 10%"
               onclick="document.location.href='/FuJEE/changeAccount'">
    </form>
</section>
<section>
    <form method="post" action="/FuJEE/exitAccount">
        <input type="submit" name="deleteAccount" value="Удалить аккаунт"
               style="width: 45%; height: 10%; background-color: red;">
    </form>
</section>
</body>
</html>