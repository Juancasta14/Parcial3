# Parcial3
Juan David Castañeda Tenjo

Creación base de datos y tabla libros
CREATE DATABASE Biblioteca_Juan;

USE Biblioteca_Juan;
CREATE TABLE Libros (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
autor VARCHAR(255) NOT NULL,
paginas int NOT NULL,
fecha_prestamo date,
fecha_entrega date,
tipo varchar(225),
prestamista varchar(225),
resumen varchar(550)
);

insert into Libros (titulo, autor, paginas, fecha_prestamo, fecha_entrega, tipo, prestamista, resumen) values ('Harry Potter','Jorge Pajarito',300,'2024-06-09','2024-06-11','ficcion','Juan Castaneda','Pañsodfhñasihdfoañshdfñashdfñohasdf' );
insert into Libros (titulo, autor, paginas, fecha_prestamo, fecha_entrega, tipo, prestamista, resumen) values ('Harry Potter 2','Jorge Pajarito',300,'2024-05-20','2024-06-16','ficcion','Juan Castaneda','Pañsodfhñasihdfoañshdfñashdfñohasdf' );
insert into Libros (titulo, autor, paginas, fecha_prestamo, fecha_entrega, tipo, prestamista, resumen) values ('Harry Potter 3','Jorge Pajarito',334,'2024-06-10','2024-06-22','ficcion','Juan Castaneda','Pañsodfhñasihdfoañshdfñashdfasdasdñohasdf' );

select * from Libros
  ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/17cc8291-a245-4dda-b352-f49b9065599e)
  ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/715de537-a989-4f3a-975d-2d7bc9cdbaf0)
Insertar valores
![image](https://github.com/Juancasta14/Parcial3/assets/162644989/93954eb4-3882-4356-9528-3317393cf6d2)

Dato en la tabla
 
Visualización de la tabla Libros:

 ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/2a244d59-4312-4983-9ce6-497cf6f44b26)

Agregar

 ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/a6593dde-eb3c-41c0-8d35-e9755bafb320)

Agregado un nuevo libro

 ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/fcdaaf26-8a08-4b31-835e-3d03fa2742fd)

Eliminar id 4

 ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/e7ef9020-cb43-4a45-bca8-0025d121edf8)
![image](https://github.com/Juancasta14/Parcial3/assets/162644989/f3ad5a9e-4ed6-4776-86bd-b327ca86911b)

 
Actualizar

 ![image](https://github.com/Juancasta14/Parcial3/assets/162644989/a2db31ab-5f8b-4097-87fa-270275e230cc)
![image](https://github.com/Juancasta14/Parcial3/assets/162644989/ed3e85e9-456c-4937-a5af-c948d09b3e66)
![image](https://github.com/Juancasta14/Parcial3/assets/162644989/f927bac2-bd98-472c-86a2-49b1d58c18ab)


 
 

