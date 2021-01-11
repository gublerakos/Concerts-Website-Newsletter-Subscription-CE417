<?php
   include('config.php');
   session_start();
   
   $user_check = $_SESSION['login_user'];
   // $flag = 0;
   // $flag = $_SESSION['flag'];
   
   $ses_sql = mysqli_query($conn,"select * from users where username = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   
   $login_session = $row['username'];
   $login_pass = $row['password'];
   $login_email = $row['email'];
   $login_phone = $row['phone'];

   // if(!isset($_SESSION['login_user'])){
   //    header("location:login.php");
   //    die();
   // }
?>