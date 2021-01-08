<?php
    include('session.php');
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
    <link rel="stylesheet" href="bootstrapModal.css">

 
    <link rel="stylesheet" href="contact.css">
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="sortcut icon" type="image/png" href="favico.png">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#myModal").modal('show');
        });
    </script>
</head>

<body>

    <!-- ATTEMPT FOR BOOTSTRAP MODAL -->
    <!-- <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="modal-header">
                    <h4 class="modal-title">Subcription</h4>
                </div>
                <div class="modal-body">
                    <p>Do you want to be the first to know everything about concerts in the world?</p>
                </div>
                <div class="more">
                    <span><a href="subscribe.html">Subcribe to our Newsletter!</a> </span>
                </div>
            </div>
        </div>
    </div> -->
    
        
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
        <img src="cockatiel-silhouette.png" alt="logo" class="logo"> Art Eagle
        <h2>...your music concert predator.</h2>
    </div>


    <div class="content">
        <div class="sideMenu shadow">
            <a href="rock.php">Rock</a>
            <a href="pop.php">Pop</a>
            <a href="blues.php">Blues</a>
            <a href="country.php">Country</a>
            <a href="electronic.php">Electronic</a>
            <a href="folk.php">Folk</a>
            <a href="hiphop.php">Hip Hop</a>
            <a href="jazz.php">Jazz</a>
            <a href="latin.php">Latin</a>
            <a href="heavymetal.php">Heavy Metal</a>
            <a href="kpop.php">K-pop</a>

            <!-- MORE MUSIC GENRES HERE -->

        </div>
        <div class="empty"></div>
        <div class="trendingNow shadow">
            <img src="rhcp.jpg" alt="trendingNow" class="trending">
            <div class="overlay">
                <a href="trending.php" class="text">Trending Now
                    <br>
                    <h2 class="text2">click for more</h2>
                </a>

            </div>
        </div>
        <div style="background-color: #EDEDED;"></div>
        <div class="mainMenu shadow">
            <div class="concerts">
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="contact shadow">
        <h1>Contact Us</h1>
        <div class="contact_form">
            <form id="contact_form" method="post" action="contactFormHandler.php">
                <input type="text" name="name" class="form_control" placeholder="Full Name" required><br>

                <input type="text" name="email" class="form_control" placeholder="Email" required><br>

                <textarea name="message" class="form_control" placeholder="Text" rows="5" required></textarea><br>

                <input type="submit" name="" class="form_control submit" value="SEND">
            </form>
        </div>

    </div>
    <footer>
        <script src="footer.js"></script>
    </footer>

</body>

</html>