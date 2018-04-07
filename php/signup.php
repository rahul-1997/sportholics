<?php

if (isset($_POST['submit-sign-up'])) {

  include_once 'dbcon.php';

  $fname = mysqli_real_escape_string($conn, $_POST['fname']);
  $lname = mysqli_real_escape_string($conn, $_POST['lname']);
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $uname = mysqli_real_escape_string($conn, $_POST['uname']);
  $pwd = mysqli_real_escape_string($conn, $_POST['pwd']);
  $pwd1 = mysqli_real_escape_string($conn, $_POST['pwd1']);

  if (empty($fname) || empty($lname) || empty($email) || empty($uname) || empty($pwd) || empty($pwd1)) {

    header("location: ../index.php?signup=empty_field");
    exit();

  }else {

    $sql = "SELECT * FROM user WHERE uname = '$uname';";
    $result = mysqli_query($conn, $sql);
    $resultno = mysqli_num_rows($result);

    if ($resultno > 0) {
      echo "

      <script>
      alert('Username Already Taken');
      window.location.href = '../index.php';
      </script>
      ";
      // header("Location: ../index.php?signup=usertaken");
      exit();

    } else {

      if ($pwd === $pwd1) {

        $pwd = password_hash($pwd1, PASSWORD_DEFAULT);
        $sql = "INSERT INTO user (fname, lname, email, uname, pwd) VALUES ('$fname', '$lname', '$email', '$uname', '$pwd');";
        $result = mysqli_query($conn, $sql);
		echo"
		<script>
		alert('You have Been Registered! Please Login to continue Shopping');
		window.location.href='../index.php';
		</script>
		";
        //header("Location: ../index.php?signup=success");
      } else {

        header("Location: ../index.php?signup=passwordmismatch");
        exit();

      }

    }

  }

} else {

  header("location: ../index.php?signup=directopen");
  exit();

}
