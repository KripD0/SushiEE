<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Person" scope="request" class="com.javaee.sushiee.model.Person"/>
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
    <title>Вход в личный кабинет</title>
    <link rel="stylesheet" href="<%=linkCSS%>"/>
</head>
<body>
<header>
    <h1 style="padding-top: 4%">Фудзи-Суши</h1>
    <img src="../icon.png" alt="Логотип" class="logo">
</header>
<nav>
    <table class="navpanel">
        <tr>
            <td><a href="/FuJEE" class="navtext">Главная</a></td>
            <td><a href="/FuJEE/menu" class="navtext">Меню</a></td>
            <td><a href="/FuJEE/promo"  class="navtext">Скидки</a></td>
            <td><a href="/FuJEE/registration"  class="navtext">Личный кабинет</a></td>
        </tr>
    </table>
</nav>
<FORM method="post" action="/FuJEE/registration">
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