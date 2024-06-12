package ejbs;

import java.util.Date;
import java.util.concurrent.TimeUnit;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;

/**
 * Session Bean implementation class Libro
 */
@Stateless
@LocalBean
public class Libro implements LibroRemote   {

	public String titulo;
	public String autor;
	public String paginas;	
	public Date fecha_prestamo;
	public Date fecha_entrega;
	public String tipo;
	public String prestamista;
	public String resumen;
    
    /**
     * Default constructor. 
     */
    public Libro() {
        // TODO Auto-generated constructor stub
    }
    
    public void Define(String titulo, String autor, String paginas, String fecha_prestamo, String fecha_entrega, String tipo, String prestamista, String resumen) {
    	
    	this.titulo = titulo;
    	this.autor = autor;
    	this.paginas = paginas;
    	this.fecha_prestamo =  new Date(fecha_prestamo);
    	this.fecha_entrega = new Date(fecha_entrega);
    	this.tipo = tipo;
    	this.tipo = tipo;
    	this.resumen = resumen;
    }

	@Override
	public void setLibro(String titulo, String autor, String paginas, String fecha_prestamo, String fecha_entrega,
			String tipo, String prestamista, String resumen) {
	
		
	}

	@Override
	public int tiempoPrestamo() {
		getDateDiff(fecha_entrega, fecha_prestamo, TimeUnit.MINUTES);
		return 0;
	}
	
	public static long getDateDiff(Date fecha_entrega, Date fecha_prestamo, TimeUnit timeUnit) {
long diffInMillies = fecha_entrega.getTime() - fecha_prestamo.getTime();
		
		
	    return timeUnit.convert(diffInMillies,TimeUnit.MILLISECONDS);
	}

	@Override
	public double timepoLectura() {
		// TODO Auto-generated method stub
		return 0;
	}

}
