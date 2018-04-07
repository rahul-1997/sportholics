<script type="text/javascript">
  function signupValidate() {
    var fname = document.signup.fname.value;
    var lname = document.signup.lname.value;
    var email = document.signup.email.value;
    var username = document.signup.uname.value;
    var password = document.signup.pwd.value;
    var password1 = document.signup.pwd1.value;
    var validchar = /^[A-Za-z]+$/;
    if (fname == "" || lname == "") {
      alert("Please Enter Name");
      return false;
    }
    else {
      if (fname.match(validchar) && lname.match(validchar)) {
        if (email == "") {
          alert("Enter Email Address");
          return false;
        }
        else{
          if (username == "") {
            alert("Enter A Username");
            return false;
          }
          else {
            if (password == "")
            {
              alert("Enter Password");
              return false;
            }
            else {

                  if (password1 == password) {
                    if (password.length < 6) {
                      alert("Password Too Small");
                      return false;
                    }
                    else {
                      return true;
                    }
                  }
                  else {
                    alert("Password Must Be Same");
                    return false;
                  }
            }
          }
        }
      }
      else {
        alert("Invalid Name");
        return false;
      }
    }
  }
  function loginValidate() {
    return true;
  }
</script>


<header class="header">
    <div class="top-bar">
      <div class="branding">
        <center><a href="./index.php" style="text-decoration:none; color:white;"><h2>Sportholics</h2></a></center>
      </div>
      <?php
        if (isset($_SESSION['uid'])) {
          echo'
          <div class="order-button">
            <center>
            <div class="order-content">
              <a href="myorders.php"><img src="./img/order1.png" alt="order-icon"><h2>View Orders</h2></a>
            </div>
          </center>
          </div>
          <div class="cart-button">
            <center>
            <div class="cart-content">
              <a href="./cart.php"><img src="./img/cart1.png" alt="cart-icon"><h4>My Cart</h4></a>
            </div>
          </center>
          ';
        }
       ?>
      </div>
      <?php
      if(!isset($_SESSION['uid'])){
        echo'
          <div class="user">
          <center>
            <a href=""><img src="img/man1.png" alt="user-image"></a>
            <div class="user-content">
              <ul>
                <li><a id="myBtn" style="cursor:pointer;">Login</a></li>
                <li><a id="myBtn1" style="cursor:pointer;">Signup</a></li>
              </ul>
            </div>
          </center>
        </div>';
      } else {
        echo'
        <div class="user1">
          <div class="user-img">
            <img src="img/man1.png" alt="user-image">
          </div>
          <div class="user-detail">
            <h3>Welcome '.$_SESSION['fname'].'!</h3>
          </div>
          <div class="logout-button">
            <form class="logout" action="./php/logout.php" method="POST">
              <button type="submit" name="logout">Logout</button>
            </form>
          </div>
        </div>
        ';
      }
      ?>
    </div>
  </header>
<!--login section starts-->
<div id="myModal" class="modal">
    <div class="modal-content">
    <span class="close">&times;</span>
		<br><br><br>
		<form class="login-form" action="./php/login.php" method="post" onsubmit="return loginValidate()">
			<input type="text" placeholder="Username" name="uname"><br>
			<input type="password" placeholder="Password" name="pwd"><br>
			<button type="submit" name="submit-log-in">Login</button>
		</form>
  </div>
</div>

<script>
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
		modal.style.display = "block";
}
span.onclick = function() {
		modal.style.display = "none";
}
window.onclick = function(event) {
		if (event.target == modal) {
				modal.style.display = "none";
		}
}
</script>
<!--login section ends-->
<!--signup section starts-->
<div id="myModal1" class="modal1">
	<div class="modal-content1">
    <span class="close1">&times;</span>
			<br><br><br>
			<form class="sign-up-form" name="signup" action="./php/signup.php" method="post" onsubmit="return signupValidate()">
	 			<input type="text" placeholder="First Name" name="fname" class="signup-name">
	 			<input type="text" placeholder="Last Name" name="lname" class="signup-name"><br>
	 			<input type="email" placeholder="E-Mail" name="email"><br>
	 			<input type="text" placeholder="Username" name="uname"><br>
	 			<input type="password" placeholder="Password" name="pwd"><br>
	 			<input type="password" placeholder="Confirm Password" name="pwd1"><br>
	 			<button type="submit" name="submit-sign-up" value="submit">Register</button>
			</form>
	</div>
</div>

<script>
var modal1 = document.getElementById('myModal1');
var btn1 = document.getElementById("myBtn1");
var span1 = document.getElementsByClassName("close1")[0];
btn1.onclick = function() {
    modal1.style.display = "block";
}
span1.onclick = function() {
    modal1.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
}
</script>
<!--signup section ends-->
<!-- Body Section Starts -->
<nav>
  <div class="container">
    <center>
    <ul class="menu-main">
      <li><a href="cricket.php">Cricket</a>
      </li>
      <li><a href="football.php">Football</a>
      </li>
      <li><a href="hockey.php">Hockey</a>
      </li>
      <li><a href="volleyball.php">Volleyball</a>
      </li>
      <li><a href="basketball.php">Basketball</a>
      </li>
      <li><a href="badminton.php">Badminton</a>
      </li>
      <li><a href="tennis.php">Tennis</a>
      </li>
      <li><a href="tabletennis.php">Table-tennis</a>
      </li>
    </ul>
  </div>
</center>
</nav>
<script type="text/javascript">
function snackBar() {
  var x = document.getElementById("snackbar")
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
