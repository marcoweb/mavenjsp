<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="colecao.LivroRepository" %>
<%@ page import="colecao.Livro" %>
<%
    LivroRepository repository = LivroRepository.getInstance();

    if(request.getMethod().equals("POST")) {
        Livro livro = new Livro();
        livro.setTitulo(request.getParameter("titulo"));
        repository.save(livro);
    }

    session.setAttribute("livros", repository.fetchAll());
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
    </head>
    <body>
        <form action="livros.jsp" method="post">
            <label for="titulo">Título:</label>
            <input name="titulo" />
            <button type="submit">Salvar</button>
        </form>
        <hr />
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

