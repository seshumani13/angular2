<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Angular JS Views</title>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-route.min.js"></script>
   </head>
<body>
 <h2>AngularJS Sample Application</h2>
      <div ng-app = "mainApp">
         <p><a href = "#adduser">Add Student</a></p>
          <p><a href = "#viewuser">View Students</a></p>
           <p><a href = "#edituser">Edit Students</a></p>
             <p><a href = "#deleteuser">Delete Students</a></p>
         <div ng-view></div>
         
 
                
      </div>
      
 <script>
         var mainApp = angular.module("mainApp", ['ngRoute']);
         mainApp.config(['$routeProvider', function($routeProvider) {
            $routeProvider.
            
            when('/adduser', {
               templateUrl: 'adduser.jsp'
              
              
            }).
            
            when('/viewuser', {
               templateUrl: 'http://localhost:8080/Angularprj/viewstudent'
               
            }).
            
            when('/deleteuser', {
                templateUrl: 'deleteuser.jsp',
               
             }).
             
              when('/edituser', {
                  templateUrl: 'edituser.jsp',
                 
               }).
            
            otherwise({
               redirectTo: '/index'
            });
         }]);
         
         
         mainApp.controller('AddStudentController', function($scope) {
            $scope.message = "This page will be used to display add student form";
         });
         
         mainApp.controller('ViewStudentsController', function($scope) {
            $scope.message = "This page will be used to view all the students";
         });
         
         mainApp.controller('EditStudentsController', function($scope) {
             $scope.message = "This page will be used to edit all the students";
          });
         mainApp.controller('DeleteStudentsController', function($scope) {
             $scope.message = "This page will be used to delete all the students";
          });
         
      </script>
</body>
</html>