<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
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
    <meta charset="utf-8">
    <title>Фудзи-Суши: Скидки</title>
    <link rel="icon" href="${pageContext.request.contextPath}/icon.png"/>
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
            <td class="noborder"><a href="/FuJEE/registration" class="navtext">Личный кабинет</a></td>
        </tr>
    </table>
</nav>
<section>
    <h1>Скидки</h1>
    <table>
        <tr>
            <td>
                <img src="${pageContext.request.contextPath}/img/01%20СТУБИЛЕТ.png" alt="СТУДБИЛЕТ С СЕТОМ">
                <h1>Постоянная скидка 10% на всё меню при предъявлении студенческого билета!</h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/02%20БЕСПЛАТНАЯ%20ДОСТАВКА.png" alt="СУШИ ЕДУТ К ВАМ">
                <h1>Бесплатная доставка при заказе на сумму от 1111₽!</h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/03%2010%20ПРОЦЕНТОВ.png" alt="ДЕСЯТЫЙ РОЛЛ СВЕТИТСЯ">
                <h1>Скидка 10% на заказы от 3000₽! </h1>
            </td>
        </tr>
        <tr>
            <td>
                <img src="${pageContext.request.contextPath}/img/04%20ТРЕТЬЯ%20ПОКУПКА.png" alt="ВАСАБИ И ИМБИРЬ">
                <h1>На каждый заказ с самовывозом имбирь и васаби бесплатно! </h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/05%20СОЦСЕТИ.png" alt="ВКОНТАКТЕ ИНСТАГРАММ ФЕЙСБУК">
                <h1>Подпишитесь на наши соцсети и получите 5% скидку к следующему заказу!</h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/06%20КАЖДЫЙ%2012.png" alt="ДВЕНАДЦАТЫЙ ЗАКАЗ СВЕТИТСЯ">
                <h1>На каждый двенадцатый заказ скидка 12%!</h1>
            </td>
        </tr>
        <tr>
            <td>
                <img src="${pageContext.request.contextPath}/img/07%20ПАК%20СОУСОВ.png" alt="ИМБИРЬ ВАСАБИ И СОУС">
                <h1>Закажите для доставки легендарную тройку из васаби, имбиря и соуса за <s>110₽</s> 88₽!</h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/08%20ПАК%20С%20ИНЬЯНЕМ.png"
                     alt="СЕТ ИНЬ-ЯНЬ КОЛА СОУС И ИМБИРЬ">
                <h1>КОМБО: Сет "Инь-янь" в комплекте с соевым соусом, имбирём и колой — <s>914₽</s> 800₽!</h1>
            </td>
            <td>
                <img src="${pageContext.request.contextPath}/img/09%20ПАК%20С%20СОТНЕЙ.png" alt="СЕТ СОТНЯ СУШИ И СОУС">
                <h1>Наш самый большой сет "Cотня" вместе с десятью соусами и суши с лососем — <s>4730₽</s> 4000₽!</h1>
            </td>
        </tr>
    </table>
</section>

<section style="border:  5px dashed #ccccff; border-radius: 0;">
    <h3>Введите свою почту и получите промокод на скидку при втором заказе: </h3>
    <label>
        <input type="text" id="emailField" placeholder="myemail@site.com"/>
    </label>
    <input type="button" onclick="checkEmail(emailField);" value="Получить" style="width: 200px; height: 100px"/>
</section>
<footer>
    <MARQUEE>Заказывайте наши ароматные и вкусные блюда! Приятного аппетита!
        Связь с поддержкой: Почта: fuji-sushi@mail.ru, Телефон: 8(800)555-35-35
    </MARQUEE>
</footer>
</body>

</html>
