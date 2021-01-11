<?php
    include("config.php");
    include("session.php");
    include 'functions.php';
    $pdo = pdo_connect_mysql();
    
    $result = $_GET['id'];
    echo $result;
    $uname = $login_session;
    echo $uname;
    //$heart_icon = "fa fa-heart";
    // session_start();
    //take the row of the selected concert from the database
    //$stmt="select * from concerts where id='".$result."'";
    //$row1 = mysqli_query($conn, $stmt);
    //$concert = $row1->fetch_assoc();

    

    //if($_SERVER["REQUEST_METHOD"] == "GET"){
        $sql="select * from concerts where artist='Red Hot Chilly Peppers'";
        $row = mysqli_query($conn, $sql);
        $result = $row->fetch_assoc();
        echo "GET\n";
        $concert_id = $result['id'];
        $aname = $result['artist'];
        $type = $result['type'];
        $location = $result['location'];
        $date = $result['date'];
        $tickets = $result['tickets'];

        //check wether the selected concert is already favorited
        /*$pdo = pdo_connect_mysql();
        $sql = "select * from favorites where concert_id = '".$concert_id."'";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        $all_favorites = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo "hi";
        $num_results = $all_favorites->num_rows;
        echo $all_favorites['concert_id'];

        if($num_results==1){//an einai hdh favorite
            
            $flag = 1;
            echo $flag;
        }
        else{
            $flag = 0;
            echo $flag;
        }
        if (!isset($_SESSION["flag"])){
            $_SESSION["flag"] = $flag;
            echo $_SESSION["flag"];
        }*/
    //}
    
    function button1() { 
        include("config.php");
        if(isset($conn)){echo "its ok\n";}
        $tempc =  $_GET['id'];
        echo $tempc;
        $tempu =  $_SESSION['login_user'];
        echo $tempu;
        echo "This is Button1 that is selected"; 
        $sql = "select * from favorites where concert_id = '".$tempc."' AND user_id = '".$tempu."'";
        $row = mysqli_query($conn, $sql);
        $all_favorites = $row->fetch_assoc();
        echo "hey";

        //$sql = "select * from favorites where concert_id = '".$concert_id."' AND user_id = '".$uname."'";
        //$stmt = $pdo->prepare($sql);
        //$stmt->execute();
        //$all_favorites = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if($all_favorites==0){//an einai hdh favorite
            $heart_icon = "fa fa-heart";
            $flag = 1;
            echo $flag;
            $insert = "insert into favorites (user_id, concert_id) values ('".$tempu."','".$tempc."')";
            $row = mysqli_query($conn, $insert);
            return $heart_icon;
            header("Location: trending.php");
            //$stmt = $pdo->prepare($delete);
            //$stmt->execute();
        }
        else{
            $heart_icon = "fa fa-heart-o";
            $flag = 0;
            echo $flag;
            $delete = "delete from favorites WHERE concert_id = '".$tempc."'AND user_id = '".$tempu."'";
            $row = mysqli_query($conn, $delete);
            return $heart_icon;
            header("Location: trending.php");
            //$stmt = $pdo->prepare($insert);
            //$stmt->execute();
        }
    }
    
    function noButtonPressed() { 
        include("config.php");
        if(isset($conn)){echo "its ok\n";}
        $tempc =  $_GET['id'];
        echo $tempc;
        $tempu =  $_SESSION['login_user'];
        echo $tempu;
        echo "No Button has been pressed yet"; //initialisation state, just setting the parameters
        $sql = "select * from favorites where concert_id = '".$tempc."'";
        $row = mysqli_query($conn, $sql);
        $all_favorites = $row->fetch_assoc();
        echo "hey";
        
        //$stmt = $pdo->prepare($sql);
        //$stmt->execute();
        //$all_favorites = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if($all_favorites>0){//an einai hdh favorite
            $heart_icon = "fa fa-heart";
            $flag = 1;
            echo $flag;
            echo $heart_icon;
            return $heart_icon;
        }
        else{
            $heart_icon = "fa fa-heart-o";
            $flag = 0;
            echo $flag;
            echo $heart_icon;
            return $heart_icon;
        }
    } 
    /*
    if (isset($_POST['button'])) {//if button pressed
        // Set the post variables so we easily identify them, also make sure they are integer
        
        // Prepare the SQL statement, we basically are checking if the concerts exists in our databaser
        $stmt = $pdo->prepare('SELECT * FROM favorites WHERE user_id = ? AND concert_id = ?');
        $stmt->execute([$uname ,$concert_id]);
        // Fetch the concert from the database and return the result as an Array
        $concert = $stmt->fetch(PDO::FETCH_ASSOC);
        echo "BUTTON\n";
        // Check if the concert exists (array is not empty)
        if ($concert > 0) {
            $flag = 0;
            // Concert exists in database, now we can create/update the session variable for the flag
            if (isset($_SESSION['favorited'])) {//if set then favorited(so go unfavorit it), if not then not favorited(so go insert in table)
                
                    // Concert already favorite so just delete from database and update heart_icon
                    $heart_icon = "material-icons mdc-icon-button__icon";
                    $stmt1 = $pdo->prepare('DELETE FROM favorites WHERE user_id = ? AND concert_id = ?');
                    $stmt1->execute([$uname, $concert_id]);
                    unset($_SESSION["favorited"]);//unset it
            } else {
                $flag = 1;
                // There are no concerts in favorites, this will add the first concert to favorites
                $heart_icon = "fa fa-heart";
                $stmt1 = $pdo->prepare('INSERT INTO favorites (user_id, concert_id) VALUES ( ?, ?)');
                $stmt1->execute([$uname ,$concert_id]);
                $_SESSION['favorited'] = $flag;
            }
        }
        
        // Prevent form resubmission...
        header('location: trending.php');
        //exit;
    }
    else {
        echo "else";
        // Prepare the SQL statement, we basically are checking if the concerts exists in our databaser
        echo $concert_id;
        $sql = "SELECT * FROM favorites WHERE concert_id = '".$concert_id."' AND user_id = '".$uname."'";
        $stmt = $pdo->prepare($sql);
        echo $sql;
        $stmt->execute();
        echo $concert_id;
        echo "HELLO";
        // Fetch the concert from the database and return the result as an Array
        $concert = $stmt->fetch(PDO::FETCH_ASSOC);
        echo "HELLO";
        // Check if the concert exists (array is not empty)
        if ($concert > 0) {
            $flag = 1;    
            if(!isset($_SESSION['favorited'])) {//if already set,then ok, else set it
                $_SESSION['favorited']=$flag;
            }
            $heart_icon = "fa fa-heart";
        } 
        else {
            $flag = 0;
            if(isset($_SESSION['favorited'])) {//if not set,then ok, else set it
                unset($_SESSION['favorited']);
            }
            $heart_icon = "material-icons mdc-icon-button__icon";
        }
    }*/
    
    /*
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if($_SESSION["flag"]==1){//an dld htan sta favorites, kai exei paththei to koumpi, tote vgalto
            $delete = "DELETE FROM favorites WHERE concert_id = '".$concert_id."'";
            mysqli_query($conn, $delete);
            $flag = 0;
            $_SESSION["flag"]= $flag;
            header("Location: trending.php");
            exit;
        }
        else{
            $sql="insert into favorites (user_id, concert_id) values ('".$uname."','".$concert_id."')";
            $row = mysqli_query($conn, $sql);
            // $_SESSION['flag'] = 1;
            $flag = 1;
            $_SESSION["flag"]= $flag;
            header("Location: trending.php");
            exit;
        }
    }*/

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
    <link rel="stylesheet" href="concerts.css">
    
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
                    <li class="btn"><a href="register.php" style=text-decoration: none;>Sign Up<i class="material-icons left">person_add</i></a></li>
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
                <!-- id="click_advance"  fa fa-heart material-icons mdc-icon-button__icon-->
                <?php if($flag==1){
                            echo "alreadyFavorite\n";
                    }
                    echo $heart_icon;
                    ?>
                    <?php 
                    if(array_key_exists('button1', $_POST)) { 
                        $hi = button1(); 
                    } 
                    else{
                        $hi = noButtonPressed();
                    }
                    ?>
                    <!--<input type="hidden" name="button" value="<?//=$flag?>" class="<?//=$heart_icon?>">-->
                    <button type="submit" name="button1" value="Button1" > <i class="<?= $hi?>" aria-hidden="true">Add/Remove from Favorites</i></button>
                    
                    <!--<input type="submit" value="Add To Cart">-->
                <?//php } else{echo "notFavorite";?>
                    <!--<button type="favorite"><i class="material-icons mdc-icon-button__icon">favorite_border</i></button>-->
                <?php// }?>
            </form>
            <form method="get">
                <h2>Artist name:
                    <a href="artists/rhcp_info.php" class="artist"><?php echo $aname; ?></a>
                </h2>
                <h2>Music genre: <?php echo $type; ?></h2>
                <h2>Stage: <?php echo $location; ?></h2>
                <h2>Date: <?php echo $date; ?></h2>
                <h2>Tickets left: <?php echo $tickets; ?></h2>
                <button>
                    <?php $_SESSION['concertId'] = $concert_id; ?>
                    <a href="ticket_pay.php?id=<?=$concert_id?>" class="ticket">Reserve your ticket now!</a> 
                    <input type="hidden" name="concert_id" value="<?=$_SESSION['concertId']?>">
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
