<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <style>
    table{
      margin: auto;
      border-collapse: collapse;
      width: 50%;
      border: 1px solid black;
    }
    th {
      background-color: #4CAF50;
      color: white;
    }
    table td,th{
      text-align: center;
    }
    td{
      background-color: #f2f2f2;
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
     ?><br><br>
     <table cellspacing="5px">
       <tr>
         <th style="padding:10px 10px;">Name</th>
         <th>Total</th>
       </tr>
     <?php
     $db = mysqli_connect("localhost","root","","sportholics");
     $userid = $_SESSION['uid'];
     $sql = "SELECT * FROM cart WHERE uid='$userid'";
     $result = mysqli_query($db,$sql);
     while($row = mysqli_fetch_array($result))
     {
      echo "<tr id='last'>";
      echo "<td style='padding:10px 10px;'>".$row['pname']."    (".$row['quantity']."X".$row['pmrp'].")     </td>";
      echo "<td align='right'>".$row['totalprice']."</td>";
      echo "</tr>";
     }
     $sql = "SELECT totalprice FROM cart WHERE uid='$userid'";
     $result = mysqli_query($db,$sql);
     $sum = 0;
     while($row=mysqli_fetch_array($result))
     {
       $sum = $sum + $row['totalprice'];
     }
     echo "<tr>";
     echo "<th style='background-color:black; padding:20px 20px;'>GRAND TOTAL</th>";
     echo "<th style='background-color:black;'>".$sum."</th>";
     echo "</tr>";
     echo "</table><br><br>";
     ?>
     <script>
     function verifyAdd(){
       var a = document.forms["Form"]["address"].value;
       if( a == "" || a.length < 20)
       {
		 alert("Invalid Address");
         return false;
       }
       else {
         return true;
       }
     }
     </script>
     <?php
     echo"
     <form align='center' onsubmit='return verifyAdd()' action='process.php' name='Form' method='POST'>
     <b>Enter Delivery Address</b><br><br>
     <input type='hidden' name='sum' value='".$sum."'>
     <textarea name='address' rows='6' cols='45'></textarea>
     <br>
     <button type='submit' style='width:100px;height:30px;padding:5px;color:black;background-color:orange; border:0px; font-weight:bold;' name='final'>Pay by COD</button>
     </form>";
     ?>
     <?php
     include 'footer1.php';
     ?>
  </body>
</html>
