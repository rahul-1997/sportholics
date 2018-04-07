<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <style>
    body{
      text-align:center;
    }
    a{
      text-decoration: none;
      color: blue;
    }
    .one1{
      width: 20%;
      height: 50%;
      text-align: center;
      margin: auto;
    }
    .one1 img{
      vertical-align: middle;
    }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet">
    <link rel="stylesheet" href="./css/master.css">
    <link rel="stylesheet" href="./css/cart.css">
  </head>
  <body>
    <?php
    include 'header.php';
    ?>
    <div class="cart">
    <?php
    $db = mysqli_connect("localhost","root","","sportholics");
    $userid = $_SESSION['uid'];
    $sql = "SELECT * FROM cart WHERE uid='$userid'";
    $result = mysqli_query($db,$sql);
    echo "<ul class='product-list-basic1'>";
while($row = mysqli_fetch_array($result))
    {
    echo "<li>";
    echo "<form action='cartaction.php' method='POST'>";
    echo "<img class='product-photo1' src='".$row['pimg']."'>";
    echo "<br><br><h2>".$row['pname']."</h2><br>";
    echo "<input type='hidden' name='pid' value='".$row['id']."'>";
    echo "<p class='product-price1'>Per Item:Rs.".$row['pmrp']."</p><br>";
    echo "<h2>Quantity:".$row['quantity']."</h2><br>";
    echo "<p class='product-price2'>Total Price:Rs.".$row['totalprice']."</p><br><br>";
    echo "<button type='submit' name='submit'>Remove</button>";
    echo "</form>";
    echo "</li>";
    }
    echo "</ul>";

    ?>
        </div>
     <?php
     $db = mysqli_connect("localhost","root","","sportholics");
     $userid = $_SESSION['uid'];
     $sql = "SELECT * FROM cart WHERE uid='$userid'";
     $result = mysqli_query($db,$sql);
     if( mysqli_num_rows($result) < 1)
     {
       echo "<div class='one1'>";
       echo "<h2>Your cart is empty</h2>";
       echo "<img src='img/shopping-cart (1).png' >";
       echo "</div>";
       include 'footer1.php';
     }
     elseif ( mysqli_num_rows($result) < 2)
     {
       echo "<a href='cartpayment.php'>CART PAYMENT</a>";
       include 'footer1.php';
     }
     else {
       echo "<a href='cartpayment.php'>CART PAYMENT</a>";
       include 'footer.php';
     }
     ?>
  </body>
</html>
