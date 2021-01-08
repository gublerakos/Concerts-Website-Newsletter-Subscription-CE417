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
?>