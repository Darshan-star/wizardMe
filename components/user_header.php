<?php
   if(isset($message)){
      foreach($message as $message){
         echo '
         <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
         </div>
         ';
      }
   }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="description" content="One place for Everything.">
    <meta name="keywords" content="Wizame, The Wizards, Wizard, WizardOne, gstech.great-site.net, shopping, cart, buy, whishlist, products">
    
    <!-- Importing css -->
    <link rel="stylesheet" type="text/css" href="./css/primary.css">
    <link rel="stylesheet" type="text/css" href="./css/animations.css">
    <link rel="stylesheet" type="text/css" href="./css/index.css">
    <link rel="stylesheet" type="text/css" href="./css/navigation.css">

    <!-- Importing Custom Font Icons -->
    <link rel="stylesheet" type="text/css" href="./css/boxicons.css">
    <link rel="stylesheet" type="text/css" href="./css/fonts.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Importing JS -->
    <script src="./js/nav-script.js" defer></script>
    <script src="./js/Jquery.js"></script>
    
    <style>
       .icons{
         text-align: right;
         padding: auto;
         margin-left: 900px;
       }
      .Top-Nav{
         min-height: 4rem;
      }
      .Top-Nav .title h1{
         font-size: 3rem;
         font-family: "great vibes";
      }
    </style>


</head>
<body>

<header class="header">

       <div class="Top-Nav">
        <div class="title">
            <a href="#"><h1>Wizardme</h1></a>
        </div>
        <form id="search-bar">
            <div class="search-bar">
                <a href="search_page.php"><input type="text" name="search" placeholder="Search" autocomplete="off">
                <div class="search-icon">
                    <i class="fa fa-search"></i></a>
                </div>
            </div>
        </form>
        <div class="social-media">
            <a href="https://facebook.com" target="_blank" rel="noopener noreferrer"><i class="fa fa-facebook"></i></a>
            <a href="https://twitter.com" target="_blank" rel="noopener noreferrer"><i class="fa fa-twitter"></i></a>
            <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer"><i class="fa fa-linkedin"></i></a>
            <a href="https://instagram.com" target="_blank" rel="noopener noreferrer"><i class="fa fa-instagram"></i></a>
        </div>
    </div>
    <nav>
        <div class="nav-container">
            <div class="catagory">
                <li>catagory <i class="down-arrow"></i>
                    <ul>
                        <li>Mobiles
                            <ul>
                                <a href="category.php?category=apple"><li>Apple</li></a>
                                <li>Infinix</li>
                                <li>MI</li>
                                <li>Oppo</li>
                                <li>Poco</li>
                                <li>Realme</li>
                                <li>Redmi</li>
                                <li>Samsung</li>
                                <li>Tecno</li>
                                <li>Vivo</li>
                            </ul>
                        </li>
                        <li>Laptops
                            <ul>
                                <li>Acer</li>
                                <li>Apple</li>
                                <li>Asus</li>
                                <li>Dell</li>
                                <li>HP</li>
                                <li>Lenovo</li>
                                <li>Microsoft</li>
                                <li>MSI</li>
                                <li>Redmi</li>
                                <li>Realme</li>
                            </ul>
                        </li>
                        <li>Tablets
                            <ul>
                                <li>Apple</li>
                                <li>Datawind</li>
                                <li>HP</li>
                                <li>I Kall</li>
                                <li>Lenovo</li>
                                <li>Microsoft</li>
                                <li>Samsung</li>
                                <li>TCL</li>
                                <li>Redmi</li>
                                <li>Realme</li>
                            </ul>
                        </li>
                        <li>TVs
                            <ul>
                                <li>LG</li>
                                <li>MarQ</li>
                                <li>MI</li>
                                <li>OnePlus</li>
                                <li>Realme</li>
                                <li>Samsung</li>
                                <li>Sony</li>
                                <li>TCL</li>
                                <li>Thomson</li>
                                <li>Vu</li>
                            </ul>
                        </li>
                        <li>Accessaries
                            <ul>
                                <li>RAM</li>
                                <li>SSD</li>
                                <li>HDD</li>
                                <li>Mouse</li>
                                <li>KeyBoard</li>
                                <li>Graphics Card</li>
                                <li>MotherBoard</li>
                                <li>Pendrive</li>
                                <li>Charger</li>
                                <li>Covers</li>
                                <li>Speakers</li>
                                <li>Microphones</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </div>
            <ul class="menu">
                <i class="bx bxs-home"></i>
                <i class="bx bx-menu"></i>
                <div>
                    <a href="./home.php"><li class="menu-list hide">Home</li></a>
                    <a href="./about.php"><li class="menu-list">About</li></a>
                    <a href="./orders.php"><li class="menu-list">Orders</li></a>
                    <a href="./shop.php"><li class="menu-list">Products</li></a>
                    <a href="./contact.php"><li class="menu-list">Contact</li></a>
                    <!-- <a href="./"><li class="cart menu-list"><i class="bx bx-cart menu-list"></i><span>+99</span></li></a> -->
                    <a href="./components/user_logout.php"><li class="menu-list">Logout</li></a>
                </div>
            </ul>
        </div>
    </nav>

    <!-- <div class="container">
        <div class="banner">
            <div class="image-scroller">
                <div class="banner-container">
                    <div class="heading">
                        <img src="./assests/images/ (25).png" class="decoration" alt="">
                        <h1>Top Brands</h1>
                        <img src="./assests/images/ (25).png" class="decoration-2" alt="">
                        <p>We have a wide range of top brands of electronics and appliances.</p>
                        <h3>With UPTO</h3>
                        <h2>60% OFF</h2>
                    </div>
                    <img src="./assests/images/Banner.png" alt="">
                </div>
            </div>
        </div>
        <div class="product-list-container">
            <div class="top-heading">
                <h1>Recently Visted Products</h1>
                <img src="./assests/images/ (11).png" alt="">
            </div>
        </div>
    </div> -->

   <section class="flex">

     <!-- <a href="home.php" class="logo"> WizardMe<span>.</span></a>

      <nav class="navbar">
         <a href="home.php">Home</a>
         <a href="about.php">About</a>
         <a href="orders.php">Orders</a>
         <a href="shop.php">Products</a>
         <a href="contact.php">Contact</a>
      </nav> -->

      <div class="icons">
         <?php
            $count_wishlist_items = $conn->prepare("SELECT * FROM `wishlist` WHERE user_id = ?");
            $count_wishlist_items->execute([$user_id]);
            $total_wishlist_counts = $count_wishlist_items->rowCount();

            $count_cart_items = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
            $count_cart_items->execute([$user_id]);
            $total_cart_counts = $count_cart_items->rowCount();
         ?>
        <!--  <div id="menu-btn" class="fas fa-bars"></div> -->
         <a href="search_page.php"><i class="fas fa-search"></i></a>
         <a href="wishlist.php"><i class="fas fa-heart"></i><span>(<?= $total_wishlist_counts; ?>)</span></a>
         <a href="cart.php"><i class="fas fa-shopping-cart"></i><span>(<?= $total_cart_counts; ?>)</span></a>
         <div id="user-btn" class="fas fa-user"></div>
      </div>

      <div class="profile">
         <?php          
            $select_profile = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
            $select_profile->execute([$user_id]);
            if($select_profile->rowCount() > 0){
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>
         <p><?= $fetch_profile["name"]; ?></p>
         <a href="update_user.php" class="btn">update profile</a>
         <div class="flex-btn">
            <a href="user_register.php" class="option-btn">register</a>
            <a href="user_login.php" class="option-btn">login</a>
         </div>
         <a href="components/user_logout.php" class="delete-btn" onclick="return confirm('logout from the website?');">logout</a> 
         <?php
            }else{
         ?>
         <p>please login or register first!</p>
         <div class="flex-btn">
            <a href="user_register.php" class="option-btn">register</a>
            <a href="user_login.php" class="option-btn">login</a>
         </div>
         <?php
            }
         ?>      
         
         
      </div>
      

   </section>

</header>