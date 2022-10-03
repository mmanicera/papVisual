package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import interfaces.Fabrica;
import interfaces.ICAltaDeInstitucionDeportiva;
import logica.InstitucionDeportiva;
import logica.ManejadorInstitucionDeportiva;



@WebServlet("/altaDictadoClase")
public class AltaDictadoClase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AltaDictadoClase() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ManejadorInstitucionDeportiva mID = ManejadorInstitucionDeportiva.getInstancia();
		List<InstitucionDeportiva> listInstituciones = mID.getInstituciones();
		request.setAttribute("listInstituciones", listInstituciones);
		RequestDispatcher dispatcher = request.getRequestDispatcher("altaDictadoClase.jsp");
        dispatcher.forward(request, response);
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
