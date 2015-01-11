#= require_self
#= require_tree ./controllers/main
#= require_tree ./directives/main
#= require_tree ./filters/main
#= require_tree ./services/main

Blog = angular.module('Blog', ['ngRoute'])

Blog.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/post/:postId', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])
Blog.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
