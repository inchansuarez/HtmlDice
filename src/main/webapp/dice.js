angular.module('demo', [])
.controller('dice', function($scope, $http) {
    $http.get('http://localhost:9000/randomNumber').
        then(function(response) {
            $scope.dice = response.data;
        });
});