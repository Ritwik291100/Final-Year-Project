<?php  ?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Login page</title>
  </head>
  <body class="pt-5">
    <div class="container mt-5 py-5">
      <div class="row">
        <div class="col-xl-12 pb-5">
          <div class="text-center">
            <h1 class="text-light">St. Thomas Scheduling System</h1>
          </div>
        </div>
      </div>
      <div class="d-flex bd-highlight">
        <div class="p-2 flex-fill bd-highlight mx-5">
        <form class="form-login" action="" method="post">
          <div class="col-auto tap my-4">
            <div class="row">
              <div class="col">
                <input type="text" class="form-control my-3" name="admin_email" placeholder="Email Address" required="">
                <input type="password" class="form-control" name="admin_pass" placeholder="password" required="">
                <button class="btn btn-lg btn-primary btn-block my-3" type="submit" name="admin_login">Log in</button>
              </div>

              <div class="col">
                <div class="p-2 flex-fill bd-highlight">
                  <div class="flex-shrink-0 px-2">
                    <img src="images/stcet_1.jpg" class="ps-3" alt="...">
                  </div>
                </div>
              </div>
            </div>
              
            </div>
          </div>
        </form>
        </div>
        
      </div>
    </div>
    
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>
<?php
// Create connection
$conn = new mysqli("localhost","root","","doit");
if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	

		if(isset($_POST['admin_login'])){
			$admin_email=mysqli_real_escape_string($conn,$_POST['admin_email']);
			$admin_pass=mysqli_real_escape_string($conn,$_POST['admin_pass']);
			$get_admin="select * from user where user_name='$admin_email' AND passwd='$admin_pass'";
			$run_admin=mysqli_query($conn,$get_admin);
			$count=mysqli_num_rows($run_admin);
			if($count==1){
				$_SESSION['admin_email']=$admin_email;
				echo"<script>alert('You are logged ')</script>";
				echo"<script>window.open('dep.php','_self')</script>";
			}else{
				echo "<script>alert('Email/Password Wrong')</script>";
			}
		}
	
?>

<?php
	if(isset($_GET['dep'])){
		include "dep.php";
	}
					
?>