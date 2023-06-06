<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ru">
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
    <meta charset="utf-8">
    <title>Фудзи-Суши: Меню</title>
    <link rel="icon" href="${pageContext.request.contextPath}/icon.png"/>
    <link rel="stylesheet" href="<%=linkCSS%>"/>
    <script src="${pageContext.request.contextPath}/js/makeOrder.js"></script> <!--Подкючение джс файла-->
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
<section>
    <h1> Суши</h1>
    <table>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/1%20СУШИ%20С%20КРЕВЕТКОЙ.jpg" alt="СУШИ С КРЕВЕТКОЙ">
            </td>
            <td>
                <h2 class="products">СУШИ С КРЕВЕТКОЙ</h2>
                <h4>Нарезка тунца самой высокой категории, обладающей ярко выраженным вкусом и нежной текстурой.
                    Они представляют собой крупные кусочки тунца на рисе и подаются без дополнительных приправ.</h4>
                <h4>30±5г, 190₽</h4>
                <input type="button" onclick="if (num1.innerText>0) {num1.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num1">0</span> <!--Группирует элементы (цифереки для продуктов)-->
                <input type="button" onclick="num1.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/2%20СУШИ%20С%20ЛОСОСЕМ.jpg" alt="СУШИ С ЛОСОСЕМ"></td>
            <td>
                <h2 class="products">СУШИ С ЛОСОСЕМ</h2>
                <h4>Сырые нарезки свежего лосося на рисе, подаются с соевым соусом и имеют нежный вкус с лёгкой
                    сладостью.</h4>
                <h4>34±15г, 79₽</h4>
                <input type="button" onclick="if (num2.innerText>0) {num2.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num2">0</span>
                <input type="button" onclick="num2.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/3%20СУШИ%20С%20ТУНЦОМ%20БЛЮФИН.jpg"
                     alt="СУШИ С ТУНЦОМ БЛЮФИН"></td>
            <td>
                <h2 class="products">СУШИ С ТУНЦОМ БЛЮФИН</h2>
                <h4>Свежая креветка на рисе, более мягкая и сладковатая, чем другие виды суши.
                    Они подаются с соевым соусом и имеют легкий и свежий вкус.</h4>
                <h4>30±5г, 490₽</h4>
                <input type="button" onclick="if (num3.innerText>0) {num3.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num3">0</span>
                <input type="button" onclick="num3.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/4%20СУШИ%20С%20ТУНЦОМ%20ТОРО.jpg"
                     alt="СУШИ С ТУНЦОМ ТОРО"></td>
            <td>
                <h2 class="products">СУШИ С ТУНЦОМ ТОРО</h2>
                <h4>Наиболее роскошный и дорогой вид тунца, имеющий мраморную структуру, подается в виде
                    крупных кусочков на рисе и обладает богатым вкусом и глубоким ароматом.</h4>
                <h4>30±5г, 550₽</h4>
                <input type="button" onclick="if (num4.innerText>0) {num4.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num4">0</span>
                <input type="button" onclick="num4.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/5%20СУШИ%20С%20УГРЁМ.jpg" alt="СУШИ С УГРЁМ"></td>
            <td>
                <h2 class="products">СУШИ С УГРЁМ</h2>
                <h4>Роскошные кусочки угря на кусочках риса, подаются с вяленым имбирем для нейтрализации жира и соевым
                    соусом для придания пикантности.</h4>
                <h4>34±15г, 95₽</h4>
                <input type="button" onclick="if (num5.innerText>0) {num5.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num5">0</span>
                <input type="button" onclick="num5.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>

    </table>
</section>

<section>
    <h1>Сеты роллов</h1>
    <table>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/6%20СЕТ%20АФРИКАНСКИЙ.png" alt="СЕТ АФРИКАНСКИЙ"></td>
            <td>
                <h2 class="products">СЕТ АФРИКАНСКИЙ</h2>
                <h4>Африканские страсти кипят в этом сете! Много лосося, краба и новый ролл с
                    кальмаром – лучшее решение.</h4>
                <h4>825г, 1150₽</h4>
                <input type="button" onclick="if (num6.innerText>0) {num6.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num6">0</span>
                <input type="button" onclick="num6.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/7%20СЕТ%20ИКАРИ.png" alt="СЕТ ИКАРИ"></td>
            <td>
                <h2 class="products">СЕТ ИКАРИ</h2>
                <h4>WOW! В меню кальмар! Два ролла с кальмаром в одном сете, чтобы вы
                    распробовали каждый, и любимые роллы Лайт и Нагато для тех, кому хочется больше лосося.</h4>
                <h4>920г, 1250₽</h4>
                <input type="button" onclick="if (num7.innerText>0){num7.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num7">0</span>
                <input type="button" onclick="num7.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/8%20СЕТ%20ИНТЕРЕСНЫЙ%20.png" alt="СЕТ ИНТЕРЕСНЫЙ"></td>
            <td>
                <h2 class="products">СЕТ ИНТЕРЕСНЫЙ</h2>
                <h4>Тебе захочется пробовать его снова и снова, и каждый раз он будет
                    раскрываться по-новому. Не забудь выбрать соус, который будет дополнять твой сет - он станет
                    отличным дополнением.</h4>
                <h4>875г, 875₽</h4>
                <input type="button" onclick="if (num8.innerText>0) {num8.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num8">0</span>
                <input type="button" onclick="num8.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/9%20СЕТ%20ИНЬ-ЯНЬ.png" alt="СЕТ ИНЬ-ЯНЬ"></td>
            <td>
                <h2 class="products">СЕТ ИНЬ-ЯНЬ</h2>
                <h4>Идеально подойдёт для романтического ужина, сет заряжен на любовь и гармонию.</h4>
                <h4>515г, 715₽</h4>
                <input type="button" onclick="if (num9.innerText>0){num9.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num9">0</span>
                <input type="button" onclick="num9.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/10%20СЕТ%20СОТНЯ.png" alt="СЕТ СОТНЯ"></td>
            <td>
                <h2 class="products">СЕТ СОТНЯ</h2>
                <h4>В сто раз больше удовольствия! Вокруг этого сета друзья собираются сами.</h4>
                <h4>2185г, 3490₽</h4>
                <input type="button" onclick="if (num10.innerText>0) {num10.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num10">0</span>
                <input type="button" onclick="num10.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
    </table>
</section>

<section>
    <h1>Соусы и напитки</h1>
    <table>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/14%20НАПИТОК%20КОЛА%20ЧЕРНОГОЛОВКА.png"
                     alt="НАПИТОК КОЛА ЧЕРНОГОЛОВКА"></td>
            <td>
                <h2 class="products">НАПИТОК КОЛА ЧЕРНОГОЛОВКА</h2>
                <h4>Любимый вкус колы в бутылке 0.5л!</h4>
                <h4>0.5л, 109₽</h4>
                <input type="button" onclick="if (num11.innerText>0) {num11.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num11">0</span>
                <input type="button" onclick="num11.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/15%20МОРС%20БОДРЯЩИЙ%20ЛИМОН.png"
                     alt="МОРС БОДРЯЩИЙ ЛИМОН"></td>
            <td>
                <h2 class="products">МОРС БОДРЯЩИЙ ЛИМОН</h2>
                <h4>Освежающий и лёгкий, заряжает энергией и хорошо утоляет жажду!</h4>
                <h4>0.5л, 159₽</h4>
                <input type="button" onclick="if (num12.innerText>0) {num12.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num12">0</span>
                <input type="button" onclick="num12.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/11%20ВАСАБИ.png" alt="ВАСАБИ"></td>
            <td>
                <h2 class="products">ВАСАБИ</h2>
                <h4>Ощутите яркий взрыв вкуса с васаби! Это пряная и ароматная приправа, которая послужит идеальным
                    дополнением к вашим блюдам!</h4>
                <h4>10г, 20₽</h4>
                <input type="button" onclick="if (num13.innerText>0) {num13.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num13">0</span>
                <input type="button" onclick="num13.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/12%20ИМБИРЬ.png" alt="ИМБИРЬ"></td>
            <td>
                <h2 class="products">ИМБИРЬ</h2>
                <h4>Имбирь — традиционная японская приправа, которая подчеркивает вкус рыбы и суши.
                    Его свежий вкус и небольшая острота делают его неотъемлемой частью японской кухни.
                </h4>
                <h4>30г, 45₽</h4>
                <input type="button" onclick="if (num14.innerText>0) {num14.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num14">0</span>
                <input type="button" onclick="num14.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.request.contextPath}/img/13%20СОУС%20СОЕВЫЙ.png" alt="СОУС СОЕВЫЙ"></td>
            <td>
                <h2 class="products">СОУС СОЕВЫЙ</h2>
                <h4>Соевый соус — это необходимый элемент любого японского блюда, который подчеркивает вкус ингредиентов
                    и яркие нотки соевых бобов,
                    создавая уникальный вкусовой букет.</h4>
                <h4>35г, 45₽</h4>
                <input type="button" onclick="if (num15.innerText>0) {num15.innerText--;cart.innerText--;}" value="-"/>
                <span class="amounts" id="num15">0</span>
                <input type="button" onclick="num15.innerText++;cart.innerText++;" value="+"/>
            </td>
        </tr>
    </table>
</section>


<input type="button" onclick="addProducts();openOrderWindow();" value="Перейти к оформлению"
       style="width: 400px; height: 100px"/>

<footer>
    <MARQUEE>Заказывайте наши ароматные и вкусные блюда! Приятного аппетита!
        Связь с поддержкой: Почта: fuji-sushi@mail.ru, Телефон: 8(800)555-35-35
    </MARQUEE>
</footer>
</body>

</html>
