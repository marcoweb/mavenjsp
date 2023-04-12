<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="colecao.LivroRepository" %>
<%@ page import="colecao.Livro" %>
<%
    LivroRepository repository = LivroRepository.getInstance();
    Livro livro = new Livro();
    livro.setId(10);
    livro.setTitulo("Teste");
    repository.save(livro);

    request.setAttribute("livros", repository.fetchAll());
%>
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

        <table>
            <tr>
                <td>Id</td>
                <td>Titulo</td>
            </tr>
            <c:forEach var="l" items="${livros}">
                <tr>
                    <td>${l.value.getId()}</td>
                    <td>${l.value.getTitulo()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

