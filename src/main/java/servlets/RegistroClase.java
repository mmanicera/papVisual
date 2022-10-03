package servlets;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Excepciones.RegistroRepetidoException;
import interfaces.ICRegistroDictadoDeClase;
import interfaces.Fabrica;

@WebServlet("/RegistroClase")
public class RegistroClase extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public RegistroClase() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String actividad = request.getParameter("actividad");
		String clase = request.getParameter("clase");
		String socio = "pepe";
		Calendar cal = new GregorianCalendar();
		int dia = cal.get(Calendar.DAY_OF_MONTH);
        int mes = cal.get(Calendar.MONTH);
        int anio = cal.get(Calendar.YEAR);
        Date faux = new Date(dia+"/"+mes+"/"+anio);
		
		Fabrica fabrica = Fabrica.getInstancia();
		ICRegistroDictadoDeClase icon = fabrica.getICRegistroDictadoDeClase();
		try {
			icon.agregarRegistro(actividad, faux, clase, socio);
		} catch (RegistroRepetidoException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd;
		request.setAttribute("mensaje", "Se ha registrado correctamente a la clase " + clase + ".");
		rd = request.getRequestDispatcher("/home.jsp");
		rd.forward(request, response);
 
		
	}

}
