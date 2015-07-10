angular.module "widgetApp"
  .controller "WidgetsCtrl", ($scope, Widget) ->
    Widget.query().then (widgets) ->
      $scope.widgets = widgets
      console.log $scope.widgets
