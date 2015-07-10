angular.module "widgetApp"
  .config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "widgets",
        url: "/widgets",
        templateUrl: "app/components/widgets/widgets.html",
        controller: "WidgetsCtrl"

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode(true)

  .factory "Widget", (RailsResource) ->
    class Widget extends RailsResource
      @configure url: "/api/v1/widgets", name: "widget"
