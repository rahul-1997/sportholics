<?php
session_start();
 ?>
 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <title></title>
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
 <h2>My Orders</h2>
  <?php
    $userid = $_SESSION['uid'];
    $db=mysqli_connect("localhost","root","","sportholics");
    $sql = "SELECT * FROM ordermain where uid='$userid';";
    $result = mysqli_query($db,$sql);
    while($rows = mysqli_fetch_array($result))
    {
      echo "Order id: ".$rows['tid']."<br>";
      $date= $rows['date2'];
      echo "Order date/Time: ".$date."<br>";
      echo "Order Bill: ".$rows['total']."<br>";
      echo "Delivery Status: ".$rows['status']."<br>";
      $sql1 = "SELECT pimg,pname,pmrp,quantity,totalprice FROM ordersub where uid='$userid' and date1='$date';";
      $result2 = mysqli_query($db,$sql1);
      echo "<ul class='product-list-basic1'>";
      while ($row = mysqli_fetch_array($result2)) {
        echo "<li>";
        echo "<img class='product-photo1' src='".$row['pimg']."'>";
        echo "<br><br><h2>".$row['pname']."</h2><br>";
        echo "<p class='product-price1'>Per Item:Rs.".$row['pmrp']."</p><br>";
        echo "<h2>Quantity:".$row['quantity']."</h2><br>";
        echo "<p class='product-price2'>Total Price:Rs.".$row['totalprice']."</p><br><br>";
        echo "</li>";
        }
        echo "</ul>";
    }
  ?>
<?php
 $result = mysqli_query($db,$sql);
 if(mysqli_num_rows($result) < 1)
 {
   echo "<br><br><br><br><br><br><h2 align='center'>You haven't ordered anything Yet!</h2>";
   include 'footer1.php';
 }
 else if(mysqli_num_rows($result) < 2)
 {
   while($rows = mysqli_fetch_array($result))
   {
     $date= $rows['date2'];
     $sql1 = "SELECT * FROM ordersub where uid='$userid' and date1='$date';";
     $result2 = mysqli_query($db,$sql1);
     if(mysqli_num_rows($result2) < 2)
     {
       include 'footer1.php';
     }
     else {
       include 'footer.php';
     }
   }
 }
 else {
   include 'footer.php';
 }
  ?>
   </body>
 </html>
