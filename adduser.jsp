<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
</head>
<body>

<div ng-app="myApp" >
<h2>Student Information</h2>
<form name ="Studentform" method="get" action="http://localhost:8080/Angularprj/create">
<table>
<tr>
<td>Name</td>
<td><input type="text" name="name" ng-model="name" required></td>
 </tr>
 
 <tr>
<td>Age</td>
<td><input type="text" name="age" ng-model="age" required></td>
 </tr>
              
 <tr>
<td>Id</td>
<td><input type="text" name="Id" ng-model="Id" required></td>
 </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
     </form>
        </div>
</body>
</html>
