<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ошибка</title>
    <link rel="icon" href="${pageContext.request.contextPath}/icon.png"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mystyle.css"/>
</head>
<body>
<%
    String[] exceptionSplit = pageContext.getException().getMessage().split("(?<=[;:])");
%>
<h1>Произошла ошибка</h1>
<table>
    <tr>
        <td>
            <h2>Причина ошибки:</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                <%
                    for (int i = 0; i < exceptionSplit.length; i++) {
                        if (i%2==0) {
                            out.println("<h2>" + exceptionSplit[i] + "</h2><br>");
                        }
                        else {
                            out.println(exceptionSplit[i] + "<br>");
                        }
                    };
                %>
            </h3>
        </td>
    </tr>
</table>

<table>
    <tr>
        <td><h2>Тип:</h2></td>
    </tr>
    <tr>
        <td>
            <h3><%= pageContext.getException().getClass().toString() %>
            </h3>
        </td>
    </tr>
</table>
<nav>
    <table style="width: 10%;">
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/FuJEE/registration" class="navtext">Вернуться</a>
            </td>
        </tr>
    </table>
</nav>

</body>
</html>