<?php
    include('session.php');
    include 'functions.php';
    $pdo = pdo_connect_mysql();
    
    $genre = $_GET['genre'];
    // Get concerts by the genre on the url parameter
    $sql = "select * from concerts where type = '".$genre."'";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $all_concerts = $stmt->fetchAll(PDO::FETCH_ASSOC);
   
    //$row1 = mysqli_query($conn, $sql);
    //echo $all_concerts['artist'];
    //$all_concerts = $row1->fetch_assoc();
?>


<?=template_header()?>

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

        <h1 class="title"><?php echo $genre;?></h1>
        <div class="concerts">

            <?php foreach ($all_concerts as $concert): ?>
                <a href="artist.php?id=<?=$concert['id']?>" class="container1">
                <img src="./images/<?=$genre?>/<?=$concert['img1']?>"  alt="<?=$concert['artist']?>"class="image1">
                <div class="overlay1">
                    <div class="text1"><?=$concert['artist'] ?> <br> click for more </div>
                </div>
                </a>
                <?php endforeach; ?>
        </div>
        <br><br><br><br><br>
    </div>

    <script src="footer.js"></script>
</body>



</html>