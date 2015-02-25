angular.module '%module%.long-list'
.config ($stateProvider) ->
  $stateProvider
  .state 'long-list',
    url: '/long-list'
    controller: 'LongListController'
    templateUrl: 'long-list/views/view.html'
