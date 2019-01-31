var app = angular.module("app",[]);
app.controller("ctrl",["$scope","$http", function($scope,$http){
    $scope.name="Hello from Angular JS (UI)";
    $http({method:'GET',url:'/api/',transformResponse: function(data, headersGetter){return {data: data};}}).then(function(res){
        console.log("response");
    },function(err){
        console.log("response");
    });
}]);
