<?php
    include('session.php');
    // include('favorites.php');
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
                    <li class="btn shadow"><a href="profil.php"><?php echo $login_session;?><i class="material-icons">face</i></a></li> 
                </ul>
            <?php } ?>
        </nav>
    </div>
    <div class="header">
        <img src="cockatiel-silhouette.png" alt="logo" class="logo">
        <a href="index.php" class="mainPage">Art Eagle</a>
    </div>


    <div class="content shadow">
        <h1 class="title">User Information</h1>
        <table style="width:80%">
            <tr>
                <th>Username</th>
                <td><?php echo $login_session;?></td>
            </tr>
            <tr>
                <th>Password</th>
                <td><?php echo $login_pass;?></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><?php echo $login_email;?></td>
            </tr>
            <tr>
                <th>Phone number</th>
                <td><?php echo $login_phone;?></td>
            </tr>
            <h1></h1>
            
        </table>
        <h1 class="title">Favorites</h1>
        <table style="width:80%">
            <tr>
                <?php include('config.php');
                $user_check = $_SESSION['login_user'];  
                $ses_sql = mysqli_query($conn,"select * from favorites where user_id = '$user_check' ");
                $row = $ses_sql->num_rows;
                if($row == 0){ ?>
                    <td style="text-align: center;">No favourites yet</td>
                <?php }
                else{ 
                    while($rows = $ses_sql->fetch_assoc()) {
                        $id =  $rows['concert_id'];
                        $conc = mysqli_query($conn,"select * from concerts where id = '$id'"); 
                        $result = mysqli_fetch_array($conc,MYSQLI_ASSOC); ?>
                        <th> <?php echo $result['artist'];?> </th>
                        <td> <?php echo $result['date'];?> </td>
                    <?php } ?>
                <?php } ?>

                </tr>
                </table>

            <h1 class="title">History</h1>
            <table style="width:80%">
                <tr>
                <?php include('config.php');
                $user_check = $_SESSION['login_user'];  
                $ses_sql = mysqli_query($conn,"select * from history where user_id = '$user_check' ");
                $row = $ses_sql->num_rows;
                if($row == 0){ ?>
                    <td style="text-align: center;">No concert tickets bought yet</td>
                <?php }
                else{ 
                    while($rows = $ses_sql->fetch_assoc()) {
                        $id =  $rows['concert_id'];
                        $conc = mysqli_query($conn,"select * from concerts where id = '$id'"); 
                        $result = mysqli_fetch_array($conc,MYSQLI_ASSOC); ?>
                        <th> <?php echo $result['artist'];?> </th>
                        <td> <?php echo $result['date'];?> </td>
                    <?php } ?>
                <?php } ?>
            </tr>
        </table>
        <br><br><br><br><br>

    </div>   


</body>
</html>