<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- nullar patlamiyor. bosluk olarak degerlendirilir bir şey ifade etmez problem olmaz. -->
${noattribute}
${noattribute[noproblem]}
${noattribute['noproblem']}

<!--  0 olarak degerlendirilir patlamaz. -->
${20+noattribute }
<!-- boolean ifade icin false olarak degerlendirilir patmamaz. -->
${true && noattribute }

<!-- true olacaktir. -->
${not attribute }
</body>
</html>