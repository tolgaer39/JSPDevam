<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- htlm alanlarinda (personform2.html) name alanlari name surname birthYear oldugu icin direkt eslestirme/binding yapar.
	 Param kullanmaya gerek kalmaz boylece... -->
<jsp:useBean id="person2" class="_01_model.Person">
	<jsp:setProperty property="name" name="person2" />
	<jsp:setProperty property="surname" name="person2" />
	<jsp:setProperty property="birthYear" name="person2" /> 
</jsp:useBean>

<p><jsp:getProperty property="name" name="person2"/></p>
<p><jsp:getProperty property="surname" name="person2"/></p>
<p><jsp:getProperty property="birthYear" name="person2"/></p>


<!-- bir diger yol da property="*" ama html de name, surname, birthYear parametreleri ayni olacak sekilde olmalidir. boylece ne kadar veri girilirse sikinti olmaz...  -->
<jsp:useBean id="person3" class="_01_model.Person">
	<jsp:setProperty property="*" name="person3" />
</jsp:useBean>

<p><jsp:getProperty property="name" name="person3"/></p>
<p><jsp:getProperty property="surname" name="person3"/></p>
<p><jsp:getProperty property="birthYear" name="person3"/></p>

</body>
</html>