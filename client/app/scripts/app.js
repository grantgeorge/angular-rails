'use strict';

/**
 * @ngdoc overview
 * @name widgetApp
 * @description
 * # widgetApp
 *
 * Main module of the application.
 */
var app = angular.module('widgetApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]);

app.config(function ($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when('/', {
      templateUrl: 'views/main.html',
      controller: 'MainCtrl'
    })
    .when('/about', {
      templateUrl: 'views/about.html',
      controller: 'AboutCtrl'
    })
    .when('/widgets', {
      templateUrl: 'views/widgets.html',
      controller: 'WidgetsCtrl'
    })
    .otherwise({
      redirectTo: '/'
    });
});

app.factory('Widget', ['$resource', function($resource) {
  return $resource('/api/widgets/:id.json', null, {
    'update': { method:'PUT' }
  });
}]);
