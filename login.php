<?php
include("config.php");
session_start();


if($_SERVER["REQUEST_METHOD"] == "POST"){

    $uname=$_POST['username'];
    $password=$_POST['password'];


    $sql="select * from users where username='".$uname."'AND password='".$password."'";
    $result=mysqli_query($conn, $sql);

    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    $active = $row['active'];

    $num_results = $result->num_rows;
    if($num_results == 1){
        $_SESSION['login_user'] = $uname;
    
        header("Location: index.php");
        exit();
    }
    else{
        header("Location: login.php");
        echo " You Have Entered Incorrect Password";
        exit();
    }
}
?>



<!DOCTYPE html>
<html lang="eng">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <title>Art Eagle</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="login.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>

    <div class="header">
        <img src="cockatiel-silhouette.png" alt="logo" class="logo"> Art Eagle
        <!-- <h2>...your music concert predator.</h2> -->
    </div>

    <div class="login-page">
    <div class="form" >
        <form class="login-form" method="POST">
        <input type="text" name="username" placeholder="Username"/>
        <input type="password" name="password" placeholder="Password"/>
        <!-- <input type="submit" type="submit" value="LOGIN" class="btn-login"/> -->
        <button>login</button>
        <p class="message">Not registered yet? <a href="register.php">Create an account</a></p>
        </form>
    </div>
    </div>

    <!-- <footer>
        <script src="footer.js"></script>
    </footer> -->
</body>

</html>