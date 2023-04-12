<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
    </head>
    <body>
        <h1>Olá Maven!!!</h1>
        <c:forEach var="num" begin="0" end="10">
            ${num} <br />
        </c:forEach>
    </body>
</html>

