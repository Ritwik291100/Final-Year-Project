<?php
// Start the session
session_start();
?>
<!DOCTYPE html>
<html>
<body>
    
<?php  ?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <title>Department and Semester page</title>
</head>

<body class="pt-5">
    <div class="container mt-5 py-5">
        <div class="row">
            <div class="col-xl-12 pb-2">
                <div class="text-center">
                    <h1 class="text-light">St. Thomas Scheduling System</h1>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <div class="col-auto">
            <form class="form-login" action="" method="post">
                    <fieldset>
                        <div class="mb-3">
                        
                            <label for="disabledSelect" class="form-label fs-4 fw-bold text-light">Department</label>
                            <select id="Dept" name="Dept" class="form-select fs-5 py-2 px-4">
                                <option>----</option>
                                <option>EE</option>
                                <option>ECE</option>
                                <option>CSE</option>
                                <option>IT</option>
                                <option>AIML</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="disabledSelect" class="form-label fs-4 fw-bold text-light">Semester</label>
                            <select id="Semester" name="Semester"class="form-select fs-5 py-2 px-4">
                                <option>----</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
                            </select>
                        </div>

                    <button type="submit" name="submit" class="btn btn-outline-info btn-block my-3">Submit</button>

                </form>
                        
                </fieldset>
                </form>
            </div>
        </div>
    </div>

    

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

</html>
<?php

// Create connection
$conn = new mysqli("localhost","root","","doit");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST ['submit'])){
    
    $selected_Dept = $_POST['Dept'];
    $selected_Semester= $_POST['Semester'];
//echo $selected_Dept;
//echo $selected_Semester;


    // Set Session Variables
//$_SESSION["Dept"] = $selected_Dept;
//$_SESSION["Semester"] = $selected_Semester;
echo"<script>window.open('Timetable.php?assign=$selected_Dept&&semester=$selected_Semester','_self')</script>";

}

?>


