<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actualizar Libros</title>
 <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biblioteca_Juan"
                   user="root" password="Juanfelipe9902*"/>
</head>
<body>
<sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Libros;
</sql:query>


<form action="updateLibro.jsp" method="post">
    <select name="id">
        <c:forEach var="libro" items="${result.rows}">
            Seleccione el Libro a actualizar:<option value="${libro.id}">${libro.titulo}</option>
        </c:forEach>
    </select>
    
    <p> Digite los nuevos campos </p>
    
    Nombre:<input type="text" name="titulo"><br>
	autor: <input type="text" name="autor"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>