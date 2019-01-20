<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Students List</h1> 
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Id</th><th>Name</th><th>Age</th></tr> 
<c:forEach var="student" items="${list}"> 
<tr> 
<td>${student.id}</td> 
<td>${student.name}</td> 
<td>${student.age}</td> 

</tr> 
</c:forEach> 
</table> 
</body>
</html>