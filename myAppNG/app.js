var app = angular.module("app",[]);
app.controller("ctrl",["$scope","$http", function($scope,$http){
    $scope.name="Hello";
    $http.get('/',{}).then(function(res){
        console.log("response");
    },function(err){
        console.log("response");
    });
}]);
