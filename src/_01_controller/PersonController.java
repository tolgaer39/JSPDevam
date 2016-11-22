package _01_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _01_model.Person;

@WebServlet("/personcontroller")
public class PersonController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Person person = new Person("Tolga", "Ergun", 1992);
		
		req.setAttribute("myPerson", person);
		
		RequestDispatcher dispatch = req.getRequestDispatcher("personview/personview.jsp");
		dispatch.forward(req, resp);
		
	}
}
