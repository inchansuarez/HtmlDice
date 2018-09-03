<!doctype html>
<html >
<head>
<title>Hello AngularJS</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
</head>
<body>
	<div>
		<button type="button" onclick="getNumber()">Roll Me!</button>
		<input type="text"  id="num" name="FirstName" value=""><br>
	</div>
	<script>
        function getNumber() {
            var xhr = new XMLHttpRequest();
            var url = "http://localhost:8080/randomNumber";
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var resultJSON = JSON.parse(xhr.responseText)
                    var htmlDisplay = "";
                        htmlDisplay += resultJSON.dice1 + ", "+resultJSON.dice2 + ", " + resultJSON.dice3;
                    
                
                    document.getElementById("num").value = htmlDisplay;
                    
                    console.log(resultJSON);
                }
            };
            xhr.open("GET", url, true);
            xhr.send();
        }
    </script>
</body>
</html>
