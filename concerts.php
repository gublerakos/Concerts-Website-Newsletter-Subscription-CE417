<?php
    include("config.php");
    include("session.php");
    
    $result0 = $_GET['id'];
    if(!isset($_SESSION['login_user'])){
        $hi = "fa fa-heart-o";
    }
    $uname = $_SESSION['login_user'];
    
    

    //if($_SERVER["REQUEST_METHOD"] == "GET"){
        $sql="select * from concerts where id='".$result0."'";
        $row = mysqli_query($conn, $sql);
        $result = $row->fetch_assoc();
        // echo "GET\n";
        $concert_id = $result['id'];
        $aname = $result['artist'];
        $type = $result['type'];
        $location = $result['location'];
        $date = $result['date'];
        $tickets = $result['tickets'];
        $img1 = $result['img1'];
        $img2 = $result['img2'];
    //}
    function button1() { 
        include("config.php");
        if(isset($conn)){
        }
        $tempc =  $_GET['id'];

        $tempu =  $_SESSION['login_user'];

        $sql = "select * from favorites where concert_id = '".$tempc."' AND user_id = '".$tempu."'";
        $row = mysqli_query($conn, $sql);
        $all_favorites = $row->fetch_assoc();

        if($all_favorites==0){//an einai hdh favorite
            $heart_icon = "fa fa-heart";
            $flag = 1;
            $insert = "insert into favorites (user_id, concert_id) values ('".$tempu."','".$tempc."')";
            $row = mysqli_query($conn, $insert);
            return $heart_icon;
        }
        else{
            $heart_icon = "fa fa-heart-o";
            $flag = 0;
            $delete = "delete from favorites WHERE concert_id = '".$tempc."'AND user_id = '".$tempu."'";
            $row = mysqli_query($conn, $delete);
            return $heart_icon;
        }
    }
    
    function noButtonPressed() { 
        include("config.php");
        if(isset($conn)){
        }
        $tempc =  $_GET['id'];
        $tempu =  $_SESSION['login_user'];
        $sql = "select * from favorites where concert_id = '".$tempc."'";
        $row = mysqli_query($conn, $sql);
        $all_favorites = $row->fetch_assoc();

        if($all_favorites>0){//an einai hdh favorite
            $heart_icon = "fa fa-heart";
            $flag = 1;
            return $heart_icon;
        }
        else{
            $heart_icon = "fa fa-heart-o";
            $flag = 0;
            return $heart_icon;
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
                    <li class="btn shadow"><a href="profil.php"><?php echo $_SESSION['login_user']; ?><i class="material-icons">face</i></a></li> 
                </ul>
            <?php } ?>
        </nav>
    </div>
    <div class="header">
        <img src="cockatiel-silhouette.png" alt="logo" class="logo">
        <a href="index.php" class="mainPage">Art Eagle</a>
    </div>

    <div class="content shadow">
        <img src="images/<?= $type?>/<?= $img2?>" alt="artist" class="photo">
        <div class="info">
            <form method="post">
                <!-- id="click_advance"  fa fa-heart material-icons mdc-icon-button__icon-->
                    <?php 
                        if(isset($_SESSION['login_user'])){
                            if(array_key_exists('button1', $_POST)) { 
                                $hi = button1(); 
                            } 
                            else{
                                $hi = noButtonPressed();
                            }
                        }
                    ?>
                    <!--<input type="hidden" name="button" value="<?//=$flag?>" class="<?//=$heart_icon?>">-->
                    <button type="submit" name="button1" value="Button1" > <i class="<?= $hi?>" aria-hidden="true">Add/Remove from Favorites</i></button>
                    
                    <!--<input type="submit" value="Add To Cart">-->
                <!-- <?//php } else{echo "notFavorite";?> -->
                    <!--<button type="favorite"><i class="material-icons mdc-icon-button__icon">favorite_border</i></button>-->
                <!-- <?php// }?> -->
            </form>
            <form method="get">
                <h2>Artist name:
                    <a href="artists.php?artist=<?= $aname?>" class="artist"><?php echo $aname; ?></a>
                </h2>
                <h2>Music genre: <?php echo $type; ?></h2>
                <h2>Stage: <?php echo $location; ?></h2>
                <h2>Date: <?php echo $date; ?></h2>
                <h2>Tickets left: <?php echo $tickets; ?></h2>
                <!--<button type="submit"> -->
                    <!--<?php $_SESSION['concertId'] = $concert_id; ?> -->
                    <a href="ticket_pay.php?id=<?=$concert_id?>" class="ticket">Reserve your ticket now!</a> 
					
                    <!--<input type="submit" name="concert_id" value="<?=$concert_id?>"> -->
                <!--</button> -->

            </form>

        </div>
        <br><br><br><br>
    </div>
    <footer>
        <script src="footer.js"></script>
    </footer>

    </body>
</html>
