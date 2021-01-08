<?php
    include('session.php');
?>

<!DOCTYPE html>
<html lang="eng">

<head>
    <title>Art Eagle</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta name="author" content="Maria Pantazi - mpantazi-@uth.gr"> -->
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="shadow.css">

    <link rel="stylesheet" href="all.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="sortcut icon" type="image/png" href="favico.png">
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
    <!-- SOS -->
    <div class="textUp">
        <h1 class="letters">Find concerts and information for all your favorite bands and artists in the world. Get concert tickets, news and more with Art Eagle.</h1>
        <nav class="buttons">
            <?php if(!isset($_SESSION['login_user'])){ ?>
                <ul>
                    <li class="btn"><a href="login.php">Login<i class="material-icons left">login</i></a></li>
                    <li class="btn"><a href="register.php">Sign Up<i class="material-icons left">person_add</i></a></li>
            </ul>
            <?php } else { ?>
                <ul>
                    <li class="btn shadow"><a href ="logout.php">Sign Out</a><i class="material-icons">keyboard_return</i></li>
                    <li class="btn shadow"><a href="profil.php"><?php echo $login_session; ?><i class="material-icons">face</i></a></li> 
                </ul>
            <?php } ?>
        </nav>
    </div>
    <div class="header">
        <img src="cockatiel-silhouette.png" alt="logo" class="logo">
        <a href="index.php" class="mainPage">Art Eagle</a>
    </div>

    <div class="content shadow">
        <h1 class="title">Rock</h1>
        <div class="concerts">
            <a href="deepPurpleConcert.php" class="container1">
                <img src="images/rock/deep_purple.png" alt="Deep Purple" class="image1">
                <div class="overlay1">
                    <div class="text1">Deep Purple <br> click for more </div>
                </div>
            </a>
            <a href="bonJoviConcert.php" class="container1">
                <img src="images/rock/bonjovi.png" alt="Bon Jovi" class="image1">
                <div class="overlay1">
                    <div class="text1">Bon Jovi <br> click for more </div>
                </div>
            </a>
            <a href="eltonJohnConcert.php" class="container1">
                <img src="images/rock/elton_john.png" alt="Elton John" class="image1">
                <div class="overlay1">
                    <div class="text1">Elton John <br> click for more </div>
                </div>
            </a>
            <a href="GunsConcert.php" class="container1">
                <img src="images/rock/gunsnroses.png" alt="Guns N' Roses" class="image1">
                <div class="overlay1">
                    <div class="text1">Guns n' Roses <br> click for more </div>
                </div>
            </a>
            <a href="BryanAdamsConcert.php" class="container1">
                <img src="images/rock/bryan_adams.png" alt="Bryan Adams" class="image1">
                <div class="overlay1">
                    <div class="text1">Bryan Adams <br> click for more </div>
                </div>
            </a>
            <a href="killersConcert.php" class="container1">
                <img src="images/rock/thekillers.png" alt="The Killers" class="image1">
                <div class="overlay1">
                    <div class="text1">The Killers <br> click for more </div>
                </div>
            </a>
        </div>
    </div>

    <script src="footer.js"></script>
</body>



</html>