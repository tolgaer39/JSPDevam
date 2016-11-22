<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="_01_model.Person" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

${myPersonList[0].name}
${myPersonList[0].surname}
${myPersonList[0].birthYear}
<p>
${myPersonList[1].name}
${myPersonList[1].surname}
${myPersonList[1].birthYear}
</p>

</body>
</html>