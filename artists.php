<?php
    include("config.php");
    include("session.php");
    
    $result = $_GET['artist'];

    $sql="select * from concerts where artist ='".$result."'";
    $row = mysqli_query($conn, $sql);
    $result = $row->fetch_assoc();
    $name = $result['artist'];
    $type = $result['type'];
    $img = $result['img1'];
    $info = $result['info'];
    $url = $result['url'];
?>

<!DOCTYPE html>
<html lang="eng">

<head>
    <title>Art Eagle</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta name="author" content="Maria Pantazi - mpantazi-@uth.gr"> -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/shadow.css">

    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/concerts.css">
    
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
        <img src="images/<?= $type?>/<?= $img?>" alt="artist" class="photo">
        <div class="info">
            <h2 class="name"><?php echo $name; ?></h2>
            <h2 class="type"><?php echo $type; ?></h2>
            <p><?php echo $info; ?></p>
            <iframe
                src="<?php echo $url; ?>">
            </iframe>
        </div>
        <br><br><br><br>
    </div>
    <footer>
        <script src="footer.js"></script>
    </footer>

    </body>
</html>
