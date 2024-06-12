<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Libro</title>
 <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biblioteca_Juan"
                   user="root" password="Juanfelipe9902*"/>
                   

</head>
<body>
                   <sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Libros;
</sql:query>
<form action="eliminarLibro.jsp" method="post">

    <select name="id">
        <c:forEach var="libro" items="${result.rows}">
            <option value="${libro.id}">${libro.titulo}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Eliminar">
</form>
</body>
</html>