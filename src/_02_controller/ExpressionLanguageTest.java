package _02_controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _01_model.Person;

@WebServlet("/expressionlangtest")
public class ExpressionLanguageTest extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Map<String, String> myMap = new LinkedHashMap<String, String>();
		
		myMap.put("deger", "deger");
		myMap.put("deger2", "deger2");
		myMap.put("deger3", "deger3");
		myMap.put("deger4", "deger4");
		
		req.setAttribute("myMap",myMap);
		
		Person person = new Person("ali", "duru", 2014);
		
		req.setAttribute("person", person);
		
		req.setAttribute("stringAttribute", "String Attribute Deneme...");
		
		RequestDispatcher dispatch = req.getRequestDispatcher("expression/expression.jsp");
		dispatch.forward(req, resp);
	}
	
}
