<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Biblioteca de Juan</title>
</head>
<body>

<h1> Creado por Juan David Castañeda Tenjo</h1>
 <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biblioteca_Juan"
                   user="root" password="Juanfelipe9902*"/>
                   
                   <sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Libros;
</sql:query>

<table border="1">
    <tr>
        <th>Id</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Paginas</th>
        <th>Fecha Prestamo</th>
         <th>Fecha Entrega</th>
         <th>Categoria</th>
         <th>Prestamista</th>
          <th>Resumen</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td>${row.id}</td>
            <td>${row.titulo}</td>
            <td>${row.autor}</td>
            <td>${row.paginas}</td>
            <td>${row.fecha_prestamo}</td>
            <td>${row.fecha_entrega}</td>
            <td>${row.tipo}</td>
            <td>${row.prestamista}</td>
            <td>${row.resumen}</td>
            
            
        </tr>

    </c:forEach>    
</table>
<ul>
  <li><a href="agregarLibro.jsp" target="_blank">AGREGAR </a></li>
  <li><a href="delete.jsp" target="_blank">BORRAR</a></li>
  <li><a href="update.jsp" target="_blank">ACTUALIZAR</a></li>

  

  
</ul>
</body>
</html>