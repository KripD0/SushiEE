<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Person" scope="request" class="com.javaee.sushiee.model.Person"/>
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
    <title>Вход в личный кабинет</title>
    <link rel="stylesheet" href="<%=linkCSS%>"/>
    <script src="${pageContext.request.contextPath}/js/emailPromo.js"></script>
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
            <td class="noborder"><a href="/FuJEE/account" class="navtext">Личный кабинет</a></td>
        </tr>
    </table>
</nav>
<form method="get" action="/FuJEE/auth">
    <h1>Авторизация:</h1>
    <table class="noborder">
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Email:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userEmail placeholder="myemail@site.com" id="emailField2" required>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">&nbsp;&nbsp;&nbsp;Пароль:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userPassword placeholder="******">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td colspan="2" class="noborder ">
                <input type="submit" name="registration" value="Авторизироваться" style="width: 60%; height: 10%"
                       onclick="checkEmail(emailField2)">
            </td>
        </tr>
    </table>
    <h1>Регистрация:</h1>
</form>
<form method="post" action="/FuJEE/registration">
    <table class="noborder">
        <tr class="noborder">
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
            <td class="noborder" style="text-align: right;">Телефон:
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
                    <input type="text" name=userEmail placeholder="myemail@site.com" id="emailField" required>
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td class="noborder" style="text-align: right;">Пароль:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userPassword placeholder="******">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td colspan="2" class="noborder ">
                <input type="submit" name="registration" value="Зарегистрироваться" style="width: 70%; height: 10%"
                       onclick="checkEmail(emailField)">
            </td>
        </tr>
    </table>
</form>
</body>
</html>