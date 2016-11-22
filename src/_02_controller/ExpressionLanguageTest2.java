package _02_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _01_model.Person;


@WebServlet("/expressionlangtest2")
public class ExpressionLanguageTest2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int[] myArray = new int[]{1,9,7};
		
		List<String> myList = new ArrayList<String>();
		myList.add("liste1");
		myList.add("liste2");
		myList.add("liste3");
		
		List<Person> myPersonList = new ArrayList<Person>();
		
		Person person =  new  Person("ali", "duru", 2000);
		Person person2 = new Person("ali", "can", 2001);
		
		myPersonList.add(person);
		myPersonList.add(person2);
		
		req.setAttribute("myPersonList", myPersonList);
		
		
		req.setAttribute("arrays",myArray); //arrayi request attribute ekledim.
		req.setAttribute("myList", "myList"); //listi request attribute ekledim.
		
		RequestDispatcher dispatch = req.getRequestDispatcher("expression/expression2.jsp");
		dispatch.forward(req, resp);
		
	}
	
}
