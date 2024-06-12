package ejbs;

public interface LibroRemote {
	void setLibro(String titulo, String autor, String paginas, String fecha_prestamo, String fecha_entrega, String tipo, String prestamista, String resumen );
	// lógica de negocios
	int tiempoPrestamo();
	double timepoLectura();

}
