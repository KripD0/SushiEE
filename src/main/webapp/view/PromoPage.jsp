<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>
  <meta charset="utf-8">
  <title>Фудзи-Суши: Скидки</title>
  <link rel="icon" href="${pageContext.request.contextPath}/icon.png"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mystyle.css"/>
  <script src="${pageContext.request.contextPath}/js/emailPromo.js"></script>
</head>

<body>

<header>
  <h1>Фудзи-Суши</h1>
  <img src="${pageContext.request.contextPath}/icon.png" alt="Логотип" class="logo">
</header>
<nav> <!--Навигация страницы-->
  <ul>
    <li><a href="${pageContext.request.contextPath}/index.jsp">Главная</a></li>
    <li><a href="MenuPage.jsp">Меню</a></li>
    <li><a href="PromoPage.jsp">Скидки</a></li>
  </ul>
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
        <img src="/img/04%20ТРЕТЬЯ%20ПОКУПКА.png" alt="ВАСАБИ И ИМБИРЬ">
        <h1>На каждый заказ с самовывозом имбирь и васаби бесплатно! </h1>
      </td>
      <td>
        <img src="/img/05%20СОЦСЕТИ.png" alt="ВКОНТАКТЕ ИНСТАГРАММ ФЕЙСБУК">
        <h1>Подпишитесь на наши соцсети и получите 5% скидку к следующему заказу!</h1>
      </td>
      <td>
        <img src="/img/06%20КАЖДЫЙ%2012.png" alt="ДВЕНАДЦАТЫЙ ЗАКАЗ СВЕТИТСЯ">
        <h1>На каждый двенадцатый заказ скидка 12%!</h1>
      </td>
    </tr>
    <tr>
      <td>
        <img src="/img/07%20ПАК%20СОУСОВ.png" alt="ИМБИРЬ ВАСАБИ И СОУС">
        <h1>Закажите для доставки легендарную тройку из васаби, имбиря и соуса за <s>110₽</s> 88₽!</h1>
      </td>
      <td>
        <img src="/img/08%20ПАК%20С%20ИНЬЯНЕМ.png" alt="СЕТ ИНЬ-ЯНЬ КОЛА СОУС И ИМБИРЬ">
        <h1>КОМБО: Сет "Инь-янь" в комплекте с соевым соусом, имбирём и колой — <s>914₽</s> 800₽!</h1>
      </td>
      <td>
        <img src="/img/09%20ПАК%20С%20СОТНЕЙ.png" alt="СЕТ СОТНЯ СУШИ И СОУС">
        <h1>Наш самый большой сет "Cотня" вместе с десятью соусами и суши с лососем — <s>4730₽</s> 4000₽!</h1>
      </td>
    </tr>
  </table>
</section>

<section style="border:  5px dashed #ccccff; border-radius: 0;">
  <h3>Введите свою почту и получите промокод на скидку при втором заказе: </h3>
  <label>
    <input type="email" id="emailField" placeholder="myemail@site.com"/>
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
