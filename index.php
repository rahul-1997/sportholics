<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Sportholics</title>
  <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="./css/master.css">
</head>
<body>
<?php
include 'header.php';
?>
<br>
<div class="slider">
  <img src="img/img1.jpg" class="slides" alt="slider-img1">
  <img src="img/img2.jpg" class="slides" alt="slider-img2">
  <script type="text/javascript">
    var index = 0;
    slideshow();
    function slideshow() {
      var i;
      x = document.getElementsByClassName("slides");
      for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
      }
      index++;
      if (index > x.length) {
        index = 1;
      }
      x[index-1].style.display = "block";
      setTimeout(slideshow,500);
    }
  </script>
</div>
<br>
<center>
<div class="trendin-product" style="border:1px solid limegreen; color:white; background:orange; width:400px; border-radius:10px;">
<h1>Trending Products</h1>
</div>
</center>
<br>
<div class="container1">
  <?php
  $db = mysqli_connect("localhost","root","","sportholics");
  $sql = "SELECT * FROM product";
  $result = mysqli_query($db,$sql);
  echo "<ul class='product-list-basic'>";
  $limit = 1;
  while($row = mysqli_fetch_array($result))
  {
    echo "<li>";
    echo "<form action='index.php' method='POST'>";
    echo "<img class='product-photo' src='".$row['pimg']."'>";
    echo "<h2 style='font-size:14px;'title='".$row['pname']."'>".$row['pname']."</h2>";
    echo "<br>";
    echo "<p class='product-description' title='".$row['pdescr']."'>".$row['pdescr']."</p>";
    echo "<select name='quantity'>
    <option value='1'>1</option>
    <option value='2'>2</option>
    <option value='3'>3</option>
    <option value='4'>4</option>
    <option value='5'>5</option>
    <option value='6'>6</option>
    <option value='7'>7</option>
    </option>
    ";
    echo "<input type='hidden' name='pid' value='".$row['pid']."'>";
    echo "<button type='submit' name='submit'>Add to Cart</button>";
    echo "<p class='product-price'>₹".$row['pmrp']."</p>";
    echo "</form>";
    echo "</li>";
    $limit++;
    if ($limit>24) {
      break;
    }
    }
    echo "</ul>";
    if(isset($_POST['submit'])){
         if(isset($_SESSION['uid'])){
         $id = $_POST['pid'];
         $userid = $_SESSION['uid'];
         $conn1 = mysqli_connect("localhost", "root", "", "sportholics");
         $sql2 = "SELECT * FROM cart where uid='$userid' and id='$id';";
         $result1 = mysqli_query($conn1,$sql2);
         $resultno = mysqli_num_rows($result1);
         if ($resultno > 0) {
           ?>
           <script>
           alert("product has already been added to cart");
           </script>
           <?php
         }
         else{
         $quantity = $_POST['quantity'];
         $sql1 = "INSERT INTO cart(id,uid,quantity) VALUES ('$id','$userid','$quantity')";
         mysqli_query($conn1, $sql1);
         $query = "SELECT * FROM product WHERE pid='$id'";
         $res = mysqli_query($conn1,$query);
         $result = mysqli_fetch_array($res);
         $img = $result['pimg'];
         $name = $result['pname'];
         $pmrp = $result['pmrp'];
         $imd = $result['pmrp'];
         $price = $quantity * $imd;
         $sql5 = "UPDATE cart SET pimg='$img',pname='$name',pmrp='$pmrp',totalprice='$price' WHERE id='$id' and uid='$userid';";
         mysqli_query($conn1,$sql5);
         exit();
       }
       }
      else{?>
    <script>
    alert("please login to continue!");
    </script>
    <?php
    }
    }
    ?>
    <?php
    include 'footer.php';
    ?>
  </body>
</html>
