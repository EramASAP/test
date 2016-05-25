var config_module = angular.module('myApp.config', []).constant('URL','http://localhost:8080/JavaAngularJSExample/');

var app = angular.module("myApp", ["myApp.config"]);