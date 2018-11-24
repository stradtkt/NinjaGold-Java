<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ninja Gold</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/app.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-primary bg-primary">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="score-container"><p class="total"> Your Gold: <c:out value="${totalGold}"/></p></div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="card shadow-lg mt-3 mb-3 text-center">
                <img src="img/farm.png" alt="" class="card-img-top">
                <h3 class="card-title">Farm</h3>
                <div class="card-body">
                    <p class="card-text">(earns 10-20 gold)</p>
                </div>
                <div class="card-footer">
                    <form action="/submit" method="post">
                        <input type="hidden" name="location" value="farm">
                        <input type="submit" value="Find Gold" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-lg mt-3 mb-3 text-center">
                <img src="img/cave.png" alt="" class="card-img-top">
                <h3 class="card-title">Cave</h3>
                <div class="card-body">
                    <p class="card-text">(earns 5-10 gold)</p>
                </div>
                <div class="card-footer">
                    <form action="/submit" method="post">
                        <input type="hidden" name="location" value="cave">
                        <input type="submit" value="Find Gold" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-lg mt-3 mb-3 text-center">
                <img src="img/house.png" alt="" class="card-img-top">
                <h3 class="card-title">House</h3>
                <div class="card-body">
                    <p class="card-text">(earns 2-5 gold)</p>
                </div>
                <div class="card-footer">
                    <form action="/submit" method="post">
                        <input type="hidden" name="location" value="house">
                        <input type="submit" value="Find Gold" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-lg mt-3 mb-3 text-center">
                <img src="img/casino.png" alt="" class="card-img-top">
                <h3 class="card-title">Casino</h3>
                <div class="card-body">
                    <p class="card-text">(earns -50-50 gold)</p>
                </div>
                <div class="card-footer">
                    <form action="/submit" method="post">
                        <input type="hidden" name="location" value="casino">
                        <input type="submit" value="Find Gold" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 offset-1 feed">
            <ul>
                <c:forEach items="${messageLists}" var="message">
                    <li class='<c:out value="${message.getColor()}"/>'><c:out value="${message.getMessage()}"/></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
        integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>