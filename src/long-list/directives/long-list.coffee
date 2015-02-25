angular.module '%module%.long-list'
.directive 'longList', ->
  restrict: 'E'
  scope:
    list: '='
    titleSelector: '@'
    pictureSelector: '@'
    contentSelector: '@'
  link:  (scope, element, attr) ->
    listElement = d3.select element[0]
      .append 'md-list'
      .classed 'long-list', true

    update = ->
      listSelection = listElement
        .selectAll 'md-list-item'
        .data scope.list, (d) -> d[scope.titleSelector] + d[scope.contentSelector]

      newListItems = listSelection.enter()
        .append 'md-list-item'
        .append 'md-item-content'

      newListItems.append 'div'
        .classed 'md-tile-left', true
        .append 'img'
        .classed 'face', true

      listSelection.selectAll '.face'
        .attr 'src', (d, i) -> d[scope.pictureSelector]

      newListItemContent = newListItems.append 'div'
        .classed 'md-tile-content', true

      newListItemContent
        .append 'h4'

      listSelection.selectAll 'h4'
        .text (d) -> d[scope.titleSelector]

      newListItemContent
        .append 'p'

      listSelection.selectAll 'p'
        .text (d) -> d[scope.contentSelector]

      listSelection
      .exit()
      .remove()


    scope.$watch 'list', update
