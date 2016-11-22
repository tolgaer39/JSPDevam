<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="person1" class="_01_model.Person">
	<jsp:setProperty property="name" name="person1" value='<%=request.getParameter("firstName") %>'/>
	<jsp:setProperty property="surname" name="person1" value='<%=request.getParameter("lastName") %>'/>
	<jsp:setProperty property="birthYear" name="person1" value='<%=Integer.parseInt(request.getParameter("birthYear")) %>'/>
</jsp:useBean>

<!-- formdan aldigim verileri ekrana yazdiralim... -->
<p><jsp:getProperty property="name" name="person1"/></p>
<p><jsp:getProperty property="surname" name="person1"/></p>
<p><jsp:getProperty property="birthYear" name="person1"/></p>


<jsp:useBean id="person2" class="_01_model.Person">
	<jsp:setProperty property="name" name="person2" param ="firstName"/>
	<jsp:setProperty property="surname" name="person2" param ="lastName"/>
	<jsp:setProperty property="birthYear" name="person2" param ="birthYear"/> 
</jsp:useBean>

<!-- formdan aldigim verileri ekrana yazdiralim... -->
<p><jsp:getProperty property="name" name="person2"/></p>
<p><jsp:getProperty property="surname" name="person2"/></p>
<p><jsp:getProperty property="birthYear" name="person2"/></p>

</body>
</html>