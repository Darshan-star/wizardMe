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

<style>
   .navebar .nav-link a {
      color: red;
      border: blue;
   }
</style>




<header class="header">

   <section class="flex">

      <a href="../admin/dashboard.php" class="logo">Admin<span>Panel</span></a>

      <nav class="navbar">
         <a href="../admin/dashboard.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/dashboard.php"){echo "active";} 
             else{echo "";}?>">Home</a>
         <a href="../admin/products.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/products.php"){echo "active";} 
             else{echo "";}?>">Products</a>
         <a href="../admin/placed_orders.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/placed_orders.php"){echo "active";} 
             else{echo "";}?>">Orders</a>
         <a href="../admin/admin_accounts.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/admin_accounts.php"){echo "active";} 
             else{echo "";}?>">Admins</a>
         <a href="../admin/users_accounts.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/users_accounts.php"){echo "active";} 
             else{echo "";}?>">Users</a>
         <a href="../admin/messages.php" class="nav-link <?php if(basename($_SERVER['PHP_SELF'])=="../admin/messages.php"){echo "active";} 
             else{echo "";}?>">Messages</a>
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="user-btn" class="fas fa-user"></div>
      </div>

      <div class="profile">
         <?php
            $select_profile = $conn->prepare("SELECT * FROM `admins` WHERE id = ?");
            $select_profile->execute([$admin_id]);
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>
         <p><?= $fetch_profile['name']; ?></p>
         <a href="../admin/update_profile.php" class="btn">update profile</a>
         <div class="flex-btn">
            <a href="../admin/register_admin.php" class="option-btn">register</a>
            <a href="../admin/admin_login.php" class="option-btn">login</a>
         </div>
         <a href="../components/admin_logout.php" class="delete-btn" onclick="return confirm('logout from the website?');">logout</a> 
      </div>

   </section>

</header>