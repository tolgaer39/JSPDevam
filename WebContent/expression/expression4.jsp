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

<!-- param expression language implicit objesidir.

	 param objesini kullanarak html alanindaki kullanicinin girdigi alanlarin degerini bu sekilde diger sayfada gosterebiliriz.  -->

${param.firstName }
${param.lastName }
${param.birthYear }

	<!-- header da jsp expression language implicit objesidir. -->
	<%request.getHeader("host");%>
	${header.host}
	
	<!-- initParam JSP expression language implicit objesi context-paramlari tutan Map tir. -->
	${initParam.testcontext }

</body>
</html>