<?php

session_start();

if (isset($_POST['submit-log-in'])) {

  include_once 'dbcon.php';

  $uname = mysqli_real_escape_string($conn, $_POST['uname']);
  $loginpwd = mysqli_real_escape_string($conn, $_POST['pwd']);

  if (empty($uname) || empty($loginpwd)) {

    header("Location: ../index.php?login=empty");
    exit();

  } else {

    $sql = "SELECT * FROM user WHERE uname = '$uname';";
    $result = mysqli_query($conn, $sql);
    $resultno = mysqli_num_rows($result);
    if ($resultno < 1) {
      header("Location: ../index.php?login=nosuchuser");
      exit();

    } else {

      if ($row = mysqli_fetch_assoc($result)) {

        $passwordcheck = password_verify($loginpwd, $row['pwd']);

        if ($passwordcheck == false) {

          header("Location: ../index.php?login=wrongpassword");
          exit();

        } elseif ($passwordcheck == true) {

          $_SESSION['uid'] = $row['uid'];
          $_SESSION['fname'] = $row['fname'];
          $_SESSION['lname'] = $row['lname'];
          $_SESSION['uname'] = $row['uname'];

          header("Location: ../index.php?login=success");
          exit();

        }

      }

    }

  }

} else {
  header("Location: ../index.php?login=error");
  exit();
}
