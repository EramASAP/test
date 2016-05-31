app.directive("newDir", function(){
	
	
	
	 return {
	        template : "This is from New directory"
	    };
});


app.controller("HelloController", function($scope, $timeout, $interval, $http, $location){
	
	
	var URL = $location.absUrl();
	
	$scope.theTime = new Date().toLocaleTimeString();
	$interval(function () {
	      $scope.theTime = new Date().toLocaleTimeString();
	}, 1000);
	
	$scope.person = [];
	
	$scope.reset = function(){
		$scope.name = '';
		$scope.email = '';
		$scope.phone = '';
	};
	
	$scope.add = function(){
		if($scope.name != null && $scope.name != "" && $scope.name != undefined)
			$scope.person.push($scope.name);
		$scope.name = '';
	};
	
	$scope.submit = function() {
		$http.post(URL+"hello?name="+$scope.name+"&email="+$scope.email+"&phone="+$scope.phone)
		.success(function (response){
			alert("Success");
		})
		.error(function(response){
			alert("Success");
		});
	};
});