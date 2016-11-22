<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="_01_model.Person"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

		request.setAttribute("myAttribute", "test my attribute");
	
%>

<!--  map in noktali hali bu sekilde cagirilir. -->
${myMap.deger}
${myMap.deger2}
${myMap.deger3}
${myMap.deger4}

<!-- map in ayni seyi ifade eden diger expression sekilleri ayni expression sekilleri person bean icinde gecerli olacaktir -->
${myMap['deger2']}
${myMap["deger2"]}


${person.name }
${person.surname }
${person.birthYear }

<!-- person bean in bir diger expression kullanimlari  -->
${person['name'] }
${person["name"] }

<!-- Person sinifinda noValue degiskeni olmadigi icin hata verecektir... -->
<%--${myPerson.noValue } --%>

<!-- expression ifadesinde birinci kisim yoksa nullsa bostur. bu durumda ikinci kismin olup olmadigi onemli degildir. patlama olmaz...   -->
<!-- thereisnoproperty isminde bir bean ya da map yoktur. buna ragmen program patlamaz calismaya devam eder.  -->
${thereisnoproperty.name}

<!-- servlette tanimlanan attribute -->
${stringAttribute}

<!-- jsp sayfasinda tanimladigim attribute -->
${myAttribute}



</body>
</html>