<?php
    include('session.php');
    include('config.php');
    // get rhcp as trending by  finding the id on the database
    $stmt="select * from concerts where artist='Red Hot Chilly Peppers'";
    $row = mysqli_query($conn, $stmt);
    $trending_concert = $row->fetch_assoc();

    $stmt="select * from concerts where artist='Lady Gaga'";
    $row = mysqli_query($conn, $stmt);
    $c1 = $row->fetch_assoc();
    $id1 = $c1['id'];
    $aname1 = $c1['artist'];
    $type1= $c1['type'];
    $img1 = $c1['img1'];
    $date1 = $c1['date'];

    $stmt="select * from concerts where artist='Muse'";
    $row = mysqli_query($conn, $stmt);
    $c2 = $row->fetch_assoc();
    $id2 = $c2['id'];
    $aname2 = $c2['artist'];
    $type2 = $c2['type'];
    $img2 = $c2['img1'];
    $date2 = $c2['date'];


    $stmt="select * from concerts where artist='Ed Sheeran'";
    $row = mysqli_query($conn, $stmt);
    $c3 = $row->fetch_assoc();
    $id3 = $c3['id'];
    $aname3 = $c3['artist'];
    $type3 = $c3['type'];
    $img3 = $c3['img1'];
    $date3 = $c3['date'];

    $stmt="select * from concerts where artist='Beyonce'";
    $row = mysqli_query($conn, $stmt);
    $c4 = $row->fetch_assoc();
    $id4 = $c4['id'];
    $aname4 = $c4['artist'];
    $type4 = $c4['type'];
    $img4 = $c4['img1'];
    $date4 = $c4['date'];

    $stmt="select * from concerts where artist='Killers'";
    $row = mysqli_query($conn, $stmt);
    $c5 = $row->fetch_assoc();
    $id5 = $c5['id'];
    $aname5 = $c5['artist'];
    $type5 = $c5['type'];
    $img5 = $c5['img1'];
    $date5 = $c5['date'];

    $stmt="select * from concerts where artist='Bryan Adams'";
    $row = mysqli_query($conn, $stmt);
    $c6 = $row->fetch_assoc();
    $id6 = $c6['id'];
    $aname6 = $c6['artist'];
    $type6 = $c6['type'];
    $img6 = $c6['img1'];
    $date6 = $c6['date'];
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
    <link rel="stylesheet" href="css/bootstrapModal.css">

 
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="sortcut icon" type="image/png" href="favico.png">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            if (sessionStorage.getItem('#myModal') !== 'true') {
                $('#myModal').modal('show');
                sessionStorage.setItem('#myModal','true');     
            }
        });
    </script>
</head>

<body>
    <!-- ATTEMPT FOR BOOTSTRAP MODAL -->
    
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <button type="button" name="close" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="modal-header">
                        <h4 class="modal-title">Subcription</h4>
                    </div>
                    <div class="modal-body">
                        <p>Do you want to be the first to know everything about concerts in the world?</p>
                    </div>
                    <form method="post" action="subscription.php">
                        <input type="text" name="email" class="form_control" id="more2" placeholder="Email" required><br>
                        <div class="more">  
                            <span><input type="submit" style="background: transparent; border:none; font-size: 22px;  color:white;" value="Subscribe to our Newsletter!"></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>

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
                    <span><a href="#subscribe" class="subr">Subcribe to our Newsletter!</a> </span>
                </div>
            </div>
        </div>
    </div>  -->
    
    <!-- ================================================================================================= -->
        
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
            <a href="genre.php?genre=Rock">Rock</a>
            <a href="genre.php?genre=Pop">Pop</a>
            <a href="genre.php?genre=Blues-Jazz">Jazz/Blues</a>
            <a href="genre.php?genre=Electronic">Electronic/House</a>
            <a href="genre.php?genre=Hip Hop">Hip Hop</a>
            <a href="genre.php?genre=Alternative Rock">Alternative</a>
            <a href="genre.php?genre=Latin">Latin</a>
            <a href="genre.php?genre=Metal">Metal</a>
            <a href="genre.php?genre=K-Pop">K-pop</a>
            <a href="genre.php?genre=Entexno">Entexno</a>
            <!-- MORE MUSIC GENRES HERE -->

        </div>
        <div class="empty"></div>
        <div class="trendingNow shadow">
            <img src="rhcp2.jpg" alt="trendingNow" class="trending">
            <div class="overlay">
                <a href="concerts.php?id=<?=$trending_concert['id']?>" class="text">Trending Now
                    <br>
                    <h2 class="text2">click for more</h2>
                </a>

            </div>
        </div>
        <div style="background-color: #EDEDED;"></div>
        <div class="mainMenu shadow">
        <h6 style="text-align: center;
                    font-size: 30px;
                    padding: 20px;
                    font-weight: 100;">Other Popular Concerts Right Now:</h6>
            <div class="concerts">
            
                <a href="concerts.php?id=<?=$id1?>" class="container1">
                    <img src="images/<?=$type1?>/<?=$img1?>" alt="<?=$aname1?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname1?> <br> <?php echo $date1; ?> </div>
                    </div>
                </a>
                <a href="concerts.php?id=<?=$id2?>" class="container1">
                    <img src="images/<?=$type2?>/<?=$img2?>" alt="<?=$aname2?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname2?> <br> <?php echo $date2; ?> </div>
                    </div>
                </a>
                <a href="concerts.php?id=<?=$id3?>" class="container1">
                    <img src="images/<?=$type3?>/<?=$img3?>" alt="<?=$aname3?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname3?> <br> <?php echo $date3; ?> </div>
                    </div>
                </a>
                <a href="concerts.php?id=<?=$id4?>" class="container1">
                   <img src="images/<?=$type4?>/<?=$img4?>" alt="<?=$aname4?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname4?> <br> <?php echo $date4; ?> </div>
                    </div>
                </a>
                <a href="concerts.php?id=<?=$id5?>" class="container1">
                    <img src="images/<?=$type5?>/<?=$img5?>" alt="<?=$aname5?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname5?> <br> <?php echo $date5; ?> </div>
                    </div>
                </a>
                <a href="concerts.php?id=<?=$id6?>" class="container1">
                   <img src="images/<?=$type6?>/<?=$img6?>" alt="<?=$aname6?>" class="image1">
                    <div class="overlay1">
                        <div class="text1"><?=$aname6?> <br> <?php echo $date6; ?> </div>
                    </div>
                </a>

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

    <div class="sub shadow" id="subscribe">
        <h1>Subscribe to our Newsletter</h1>
        <div class="contact_form">
            <form id="contact_form" method="post" action="subscription.php">
                <input type="text" name="email" class="form_control" placeholder="Email" required><br>
                <input type="submit" name="" class="form_control submit" value="SUBSCRIBE">
            </form>
        </div>
    </div>

    <footer>
        <script src="footer.js"></script>
    </footer>

</body>

</html>
