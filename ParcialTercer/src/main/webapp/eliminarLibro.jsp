<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biblioteca_Juan"
                   user="root" password="Juanfelipe9902*"/>
                 
                 <sql:update dataSource="${dbSource}">
    DELETE FROM Libros WHERE id = ${param.id};
</sql:update>

<c:redirect url="/Libros"/>
</body>
</html>