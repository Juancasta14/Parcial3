<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*"%>
     <%@ page import = "ejbs.Libro"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertar libro</title>
</head>
<body>
 <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biblioteca_Juan"
                   user="root" password="Juanfelipe9902*"/>
                   <sql:update dataSource="${dbSource}">
    INSERT INTO Libros (titulo, autor, paginas, fecha_prestamo, fecha_entrega, tipo, prestamista, resumen) 
    VALUES ('${param.titulo}','${param.autor}', '${param.paginas}', '${param.fecha_prestamo}' , '${param.fecha_entrega}' , '${param.categoria}' , '${param.prestamista}' , '${param.resumen}');
</sql:update>



<% Libro libro1 = new Libro(); %>
<%
Date date1 = new Date(2024-05-19);
Date date2 = new Date(2024-06-20);
	libro1.Define("Harry potter 5", "Juan C.", "230", "2024-05-19","2024-06-20","ficcion","Juan c", "alshdaosgdoaigsdog");
	
%>
<sql:update dataSource = "${dbSource}" var = "count">
        INSERT INTO Libros;
            (titulo, autor, paginas, fecha_prestamo, fecha_entrega, tipo, prestamista, resumen) 
            VALUES (?, ?, ?, ?, ? , ? , ? , ?);
        <sql:param value = "<%=libro1.titulo%>" />
        <sql:param value = "<%=libro1.autor%>" />
        <sql:param value = "<%=libro1.paginas%>" />    	 
        <sql:dateParam value = "<%=date1%>" type = "DATE" />
        <sql:dateParam value = "<%=date2%>" type = "DATE" />
        <sql:param value = "<%=libro1.tipo%>" /> 
        <sql:param value = "<%=libro1.prestamista%>" /> 
        <sql:param value = "<%=libro1.resumen%>" /> 
    </sql:update>
    
   <c:redirect url="/Libros"/>
</body>
</html>