<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="HelloController" ng-init="mySwitch = false">

	<h1>Hello World From Struts2 + AngularJS</h1>
	<h2 >{{theTime}}</h2>
	<div new-dir></div>
	<p>
		<input type="checkbox" ng-model="mySwitch">Click Me!
	</p>
	
   <form action="hello" ng-show="mySwitch" name="myForm" novalidate ng-submit="submit()" >
      <label for="name">Name</label><br/>
      <input type="text" name="name" ng-model="name" required/>
		<span style="color:red" ng-show="myForm.name.$error.required">Username is required.</span>
      <br/>
      <label for="name">Email</label><br/>
      <input type="email" name="email" ng-model="email" required/>
		<span style="color:red" ng-show="myForm.email.$error.required">Email is required.</span>
		<span style="color:red" ng-show="myForm.email.$error.email">Invalid email address.</span>
      <br/>
      <label for="name">Phone</label><br/>
      <input type="tel" name="phone" ng-model="phone" required ng-minlength="10" maxlength="10" ng-pattern="/^[0-9]+$/"/>
		<span style="color:red" ng-show="myForm.phone.$error.required">Phone is required.</span>
		<span style="color:red" ng-show="myForm.phone.$error.minlength">Need 10 Numbers.</span>
		<span style="color:red" ng-show="myForm.phone.$error.pattern">Use only Numbers.</span>
      <br/>
      <input type="submit" id="submit" value="Submit" ng-disabled="myForm.name.$error.required ||
      									myForm.email.$error.required ||
      									myForm.email.$error.email ||
      									myForm.phone.$error.required ||
      									myForm.phone.$error.minlength" /> --||-- <input type="button" value="Reset" ng-click="reset()"/>
      
      <br/><input type="button" value="Add" ng-click="add()"/>
    <div>
  		<p>{{name}}</p><br/>
  		<p>{{email}}</p><br/>
  		<p>{{phone}}</p><br/>
  		
	</div>
	<div>
		<ul>
  			<li ng-repeat="x in person track by $index">
    			{{ x }}
  			</li>
		</ul>
	</div>
	
   </form>
</body>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script type="text/javascript" src="controllers/app.js"></script>
	<script type="text/javascript" src="controllers/helloWorldController.js"></script>
</html>