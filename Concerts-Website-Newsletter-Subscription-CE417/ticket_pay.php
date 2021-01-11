<?php
include("config.php");
include("session.php");

$cid = $_SESSION['concertId'];
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $result=mysqli_query($conn, "select tickets from concerts where id='".$cid."'");
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);

    $tickets = $row['tickets'];
    $tickets = $tickets - 1;
    $result2=mysqli_query($conn, "update concerts set tickets = '".$tickets."'where id='".$cid."'");
    header("Location: success.php");
}

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
    <link rel="stylesheet" href="ticket.css">

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
            <?php if (!isset($_SESSION['login_user'])) { ?>
                <ul>
                    <li class="btn"><a href="login.php">Login<i class="material-icons left">login</i></a></li>
                    <li class="btn"><a href="register.php">Sign Up<i class="material-icons left">person_add</i></a></li>
                </ul>
            <?php } else { ?>
                <ul>
                    <li class="btn shadow"><a href="logout.php">Sign Out</a><i class="material-icons">keyboard_return</i></li>
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
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <form method="POST">

                        <div class="row">
                            <div class="col-50">
                                <h2 class="title2">Billing Address</h3>
                                <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                                <input type="text" id="fname" name="firstname" placeholder="John M. Doe" required>
                                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                                <input type="text" id="email" name="email" placeholder="john@example.com" required>
                                <label for="city"><i class="fa fa-institution"></i> City</label>
                                <input type="text" id="city" name="city" placeholder="New York" required>

                                <div class="row">
                                    <div class="col-50">
                                        <label for="zip">Zip</label>
                                        <input type="text" id="zip" name="zip" placeholder="10001">
                                    </div>
                                </div>
                            </div>

                            <div class="col-50">
                                <h2 class="title2">Payment</h3>
                                <label for="fname">Accepted Cards</label>
                                <div class="icon-container">
                                    <i class="fa fa-cc-visa" style="color:navy;"></i>
                                    <i class="fa fa-cc-amex" style="color:blue;"></i>
                                    <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                    <i class="fa fa-cc-discover" style="color:orange;"></i>
                                </div>
                                <label for="ccnum">Credit card number</label>
                                <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>

                                <div class="row">
                                    <div class="col-50">
                                        <label for="cvv">CVV</label>
                                        <input type="text" id="cvv" name="cvv" placeholder="352" required>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <label>
                            <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                        </label>
                        <input type="submit" value="Confirm Payment" class="button" style="margin-top: 20px;">
                    </form>
                </div>
            </div>
        </div>
        <br><br><br><br>
    </div>
    <footer>
        <script src="footer.js"></script>
    </footer>

</body>



</html>