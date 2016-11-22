<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import ="_01_model.Person" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		//getAttribute methodu object doner..
		//request bir implicit objecttir. O yuzden direkt olarak burdan ulasabiliyorum.
		Person person = (Person)request.getAttribute("myPerson");

%>

<%=person.getName() %>
<%=person.getSurname() %>
<%=person.getBirthYear() %>

<!-- jsp sayfasinda minimum java kodu kullanmamiz gerekir.
	 id degeri: PersonController sinifinda request scope a eklenen objenin adidir... 
	 class modeldeki lgili classimdir. -->
<jsp:useBean id="myPerson" class="_01_model.Person" scope="request" ></jsp:useBean>

<!-- name alanina useBean de yer alan id degeri yazilir.
	 property degerim ilgili Person sinifinin instance veriable isimleridir.  -->
<p><jsp:getProperty property="name" name="myPerson"/></p>
<p><jsp:getProperty property="surname" name="myPerson"/></p>
<p><jsp:getProperty property="birthYear" name="myPerson"/></p>

<!-- jsp setProperty action u iceride tanimlanirsa ilgili id 'de obje yoksa yeni bir object olusur.
	 setProperty ile ilgili alanlara deger atamasi yapilir. object varsa deger atanmaz!
	 bu durumda yani object varsa setProperty gecersiz olmus olur.  -->
<jsp:useBean id="noid" class="_01_model.Person" scope="request">
<jsp:setProperty property="name" name="noid" value="tolgas"/>
</jsp:useBean>

<!--  jsp setProperty action u disarida tanimlanirsa her sekilde calisacaktir. Eski degeri neyse onu owerride eder. -->
<jsp:setProperty property="name" name="noid" value="tolga"/>
<jsp:setProperty property="surname" name="noid" value="ergun"/>
<jsp:setProperty property="birthYear" name="noid" value="1993"/>

<!-- yazdiralim... -->
<h2>no object</h2>
<p><jsp:getProperty property="name" name="noid"/></p>
<p><jsp:getProperty property="surname" name="noid"/></p>
<p><jsp:getProperty property="birthYear" name="noid"/></p>

</body>
</html>