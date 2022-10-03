package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataTypes.DtUsuario;
import interfaces.Fabrica;
import interfaces.ICConsultaDeUsuario;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("userNickname");
		String pwd = request.getParameter("userPwd");
		Fabrica fabrica = Fabrica.getInstancia();
		ICConsultaDeUsuario icon = fabrica.getICConsultaDeUsuario();
		DtUsuario useraux = (DtUsuario)icon.ObtenerInfoUsuario(nickname);
		
		if (useraux.getNickname().equals(nickname) && useraux.getPwd().equals(pwd)) {
			RequestDispatcher rd;
			request.setAttribute("mensaje", "Bienvenido, " + useraux.getNickname() + "");
			rd = request.getRequestDispatcher("/home.jsp");
			rd.forward(request, response);;
		}
		
		
	}
}
