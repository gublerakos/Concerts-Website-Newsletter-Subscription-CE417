<?php

$host="localhost";
$user="root";
$password="12345";
$db="demo";


$conn =  mysqli_connect($host, $user, $password, $db);
if ($conn -> connect_errno) {
    echo "Failed to connect to MySQL: " . $conn -> connect_error;
    exit();
}
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST"){
// if(isset($_POST['username'])){


    $uname=$_POST['username'];
    $password=$_POST['password'];
    $password2=$_POST['password2'];
    // $email=$_POST['email'];

    $data = $_POST;

    if (empty($data['username']) || empty($data['password']) || empty($data['password2'])) {
        die('Please fill all required fields!');
    }

    if ($data['password'] !== $data['password2']) {
        die('Password and Confirm password should match!');   
    }

    $sql="select * from users where username='".$uname."'AND password='".$password."'";
    $result=mysqli_query($conn, $sql);

    $num_results = $result->num_rows;
    if($num_results==1){
        echo "There is already a user with the same username!";
        header("Location: register.php");
        exit();
    }
    else{
        $ins = "insert into users (username,password) values ('".$uname."','".$password."')";
        $result=mysqli_query($conn, $ins);
        header("Location: index.php");
        exit(0);
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
        <input type="password" name="password2" placeholder="Confirm Password"/>
        <!-- <input type="email" name="email" placeholder="E-mail"/> -->
        <!-- <input type="submit" type="submit" value="LOGIN" class="btn-login"/> -->
        <button>sign up</button>
        <p class="message">Already a member? <a href="login.php">Sign in!</a></p>
        </form>
    </div>
    </div>

    <!-- <footer>
        <script src="footer.js"></script>
    </footer> -->
</body>

</html>