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

<form method="post" action="/FuJEE/changeAccount">
    <table class="noborder">
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Фамилия:</td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userSurname" placeholder="Иванов" value=${userSurname}>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Имя:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userName" placeholder="Иван" value=${userName}>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Телефон:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name="userPhoneNumber" placeholder="+7(777)777-77-77" value=${userPhoneNumber}>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Email:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userEmail placeholder="myemail@site.com" id="emailField" required value=${userEmail}>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Пароль:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userPassword placeholder="******" value=${userPassword} required>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td colspan="2" class="noborder ">
                <input type="submit" name="changeAccount" value="Сохранить изменения" style="width: 70%; height: 10%"
                       onclick="checkEmail(emailField)">
            </td>
        </tr>
    </table>
</form>
</body>
</html>