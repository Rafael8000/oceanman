<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>        
<%
int[] resultado = new int[10];
for(int i = 0; i < 10; i++) {
    resultado[i] = (i+1) * 5;
}
request.setAttribute("tabuada", resultado);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tabuada</title>
</head>
<body>
    <ul>
        <% for(int num : resultado) {
            out.print("<li>" + num + "</li>");
        }
        %>
    </ul>
    <ul>
        <c:forEach var = "num" items ="${tabuada}">

        </c:forEach>
    </ul>
</body>
</html>