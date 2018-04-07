<?php
session_start();
if(isset($_POST['submit'])){
     if(isset($_SESSION['uid'])){
     $id = $_POST['pid'];
     $userid = $_SESSION['uid'];
     $conn1 = mysqli_connect("localhost", "root", "", "sportholics");
     $sql1 = "DELETE FROM cart WHERE uid='$userid' and id='$id'";
     mysqli_query($conn1, $sql1);
     header("Location: ./cart.php");
}
}
?>
