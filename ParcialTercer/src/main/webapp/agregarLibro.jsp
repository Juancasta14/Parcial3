<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Añadir libro</title>
</head>
<body>
<form action="guardarLibro.jsp" method="post">
Titulo:<input type="text" name="titulo"><br>
Autor: <input type="text" name="autor"><br>
Paginas:<input type="text" name="paginas"><br>
Fecha Prestamo:<input type="text" name="fecha_prestamo"><br>
Fecha Entrega:<input type="text" name="fecha_entrega"><br>
Categoria:<input type="text" name="categoria"><br>
Prestamista:<input type="text" name="prestamista"><br>
Resumen:<input type="text" name="resumen"><br>
<input type="submit">

</form>
</body>
</html>