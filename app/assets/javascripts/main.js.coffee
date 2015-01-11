#= require_self
#= require_tree ./controllers
#= require_tree ./directives
#= require_tree ./filters
#= require_tree ./services

Blog = angular.module('Blog', ['ngRoute'])

Blog.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/post/:postId', { templateUrl: '../assets/posts/detail.html', controller: 'PostDetailCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/posts/index.html', controller: 'PostIndexCtrl' } )

])

Blog.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
