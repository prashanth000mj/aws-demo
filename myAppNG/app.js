var app = angular.module("app",[]);
app.controller("ctrl",["$scope","$http", function($scope,$http){
    $scope.name="Hello from Angular JS (UI)";
    $http.get('/api/',{}).then(function(res){
        console.log("response");
    },function(err){
        console.log("response");
    });
}]);
