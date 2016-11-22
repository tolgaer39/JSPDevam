<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

//yukariya kutuphane eklememek icin bu sekilde burada tanimladik...
java.util.Map<String,String> myMap = new java.util.HashMap<String,String>();

myMap.put("key1", "value1");
myMap.put("key2", "value2");

request.setAttribute("myMap", myMap);

pageContext.setAttribute("myAttribute", "key1 page scope attribute");
request.setAttribute("myAttribute", "key1");
session.setAttribute("myAttribute", "key1 session attribute");
application.setAttribute("myAttribute", "key1 application/context attribute");

%>

	<p>${myMap.key1}</p>

	<p>${myMap.key2}</p>
	
	<!-- varsayilan olarak page scope attribute getirilir...
		 eger ilgili isimde request scope ta yoksa requesti - session- application scopelara sirasiyla bakilir.  -->
	<p>${myAttribute }</p>
	
	
	<!-- jsp implicit objeleri
		request, session, application, response, out, page, config, pageContext -->


	<!-- jsp expression language implicit objeleri de vardir.
	
		pageScope
		requestScope
		sessionScope
		applicationScope
		
		param
		paramValues
		
		header
		headreValues
		
		cookie
		initParam
		pageContext
		
		 -->
		 
		<P> ${pageScope.myAttribute}</P>
		<p> ${myAttribute}</p>
		<p> ${requestScope.myAttribute}</p>
		<p> ${sessionScope.myAttribute}</p>
		<p> ${applicationScope.myAttribute}</p>
		
		<!-- requestScope, sessionScope, applicationScope bunlar birer Map'tir...
		
			 requestScope JSP implicit objesi olan request ile ayni degildir.
			 
			 requestScope u kullanarak request attribute objelerine ulasim saglayabiliriz. -->

</body>
</html>