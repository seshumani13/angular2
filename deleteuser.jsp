
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> Delete Student</h2>
<div ng-app="myApp">
<form name ="deleteform" action="http://localhost:8080/Angularprj/delete">
<table>
<td>Id</td>
<td><input type="text" name="Id" ng-model="Id" required></td>

            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
         </form></div>
</body>
</html>
