angular.module '%module%.landing'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
  .state 'about',
    url: '/about'
    templateUrl: 'landing/views/about.html'
