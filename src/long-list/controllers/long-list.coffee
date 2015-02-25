angular.module '%module%.long-list'
.controller 'LongListController', ($scope) ->
  $scope.list = []

  for i in [0..1000]
    $scope.list.push
      title: "Item \##{i}"
      content: Math.random().toString(36).slice 10
      picture: "http://api.randomuser.me/portraits/thumb/lego/#{Math.floor Math.random() * 5 + 1}.jpg"
