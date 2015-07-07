'use strict';

/**
 * @ngdoc function
 * @name widgetApp.controller:GroupsCtrl
 * @description
 * # GroupsCtrl
 * Controller of the widgetApp
 */
angular.module('widgetApp')
  .controller('WidgetsCtrl', ['$scope', 'Widget', function ($scope, Widget) {
    $scope.widgets = Widget.query();
  }]);
