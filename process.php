<?php
session_start();
if(isset($_POST['final']))
{
  $db = mysqli_connect("localhost","root","","sportholics");
  $userid = $_SESSION['uid'];
  $sum = $_POST['sum'];
  $add = $_POST['address'];
  $date = date('Y-m-d H:i:s');
  $sql = "SELECT * FROM cart WHERE uid='$userid'";
  $result = mysqli_query($db,$sql);
  while($row = mysqli_fetch_array($result))
  {
   $one = $row['id'];
   $two = $row['uid'];
   $three = $row['pimg'];
   $four = $row['pmrp'];
   $five = $row['pname'];
   $six = $row['quantity'];
   $seven = $row['totalprice'];
   $sql1 = "INSERT INTO ordersub(id,uid,pimg,pmrp,pname,quantity,totalprice,date1) VALUES ('$one','$two','$three','$four','$five','$six','$seven','$date')";
   mysqli_query($db,$sql1);
  }
  $username = $_SESSION['fname'];
  $sql2 = "INSERT INTO ordermain(uid,fname,total,deladdr,date2) VALUES ('$userid','$username','$sum','$add','$date')";
  mysqli_query($db,$sql2);
  $sql3 = "DELETE FROM cart WHERE uid = '$userid'";
  mysqli_query($db,$sql3);
  echo"
  <script>
    alert('Your order has been successfully Placed!!!!');
    window.location.href='index.php';
  </script>";
}
?>
