<?php
    include("config.php");
    include("session.php");
    // session_start();
    if($_SERVER["REQUEST_METHOD"] == "GET"){
        $sql="select * from concerts where id='1'";

        $row = mysqli_query($conn, $sql);
        $result = $row->fetch_assoc();

        $aname = $result['artist'];
        $type = $result['type'];
        $location = $result['location'];
        $date = $result['date'];
        $tickets = $result['tickets'];
    }
    
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        
        $uname = $login_session;
        $concert_id = 1;

        $check = "select * from favorites where concert_id = '".$concert_id."'";
        $result=mysqli_query($conn, $check);

        $num_results = $result->num_rows;
        if($num_results==1){
            $delete = "DELETE FROM favorites WHERE concert_id = '".$concert_id."'";
            mysqli_query($conn, $delete);
            // $_SESSION['flag'] = 0;
            // $flag =0;
            header("Location: trending.php");
        }
        else{
            $sql="insert into favorites (user_id, concert_id) values ('".$uname."','".$concert_id."')";
            $row = mysqli_query($conn, $sql);
            // $_SESSION['flag'] = 1;
            header("Location: trending.php");
        }
    }

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
        <img src="rhcp2.jpg" alt="artist" class="photo">
        <div class="info">
            <form method="post">
                    <!-- <button id="click_advance" type="favorite"><i class="fa fa-heart" aria-hidden="true"></i></button> -->
                    <button type="favorite"><i class="material-icons mdc-icon-button__icon">favorite_border</i></button>
            </form>
            <form method="get">
                <h2>Artist name:
                    <a href="artists/rhcp_info.php" class="artist"><?php echo $aname; ?></a>
                </h2>
                <h2>Music genre: <?php echo $type; ?></h2>
                <h2>Stage: <?php echo $location; ?></h2>
                <h2>Date: <?php echo $date; ?></h2>
                <h2>Tickets: <?php echo $tickets; ?></h2>
                <button>
                    <?php $_SESSION['concertId'] = 1; ?>
                    <a href="ticket_pay.php" class="ticket">Reserve your ticket now!</a> 
                </button>

            </form>

        </div>
        <br><br><br><br>
    </div>
    <footer>
        <script src="footer.js"></script>
    </footer>
    
    </body>
</html>
