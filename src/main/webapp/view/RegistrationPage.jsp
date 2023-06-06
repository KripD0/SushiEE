<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Person" scope="request" class="com.javaee.sushiee.model.Person"/>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <% String theme = "peach";
        String linkCSS;
        Cookie[] cookie = request.getCookies();
        if(cookie != null){
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
<FORM method="post" action="/FuJEE/registration">
    <h1>Авторизация:
    </h1>
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
            <td class="noborder" style="text-align: right;">Password:
            </td>
            <td class="noborder" style="text-align: left;">
                <label>
                    <input type="text" name=userPassword placeholder="******">
                </label>
            </td>
        </tr>
        <tr class="noborder">
            <td colspan="2" class="noborder ">
                <input type="submit" name="registration" value="Авторизоваться" style="width: 50%; height: 10%">
            </td>
        </tr>
    </table>
</FORM>
</body>
</html>