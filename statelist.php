<?php
	
// Start the session
session_start();

	// Create connection
	//$conn = new mysqli($servername, $username, $password, $dbname);
	$conn=mysqli_connect("localhost","root","","doit");
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$Department = $_SESSION["DEPT"];
	$Semester = $_SESSION["SEM"];
	
	$sql = "SELECT sub_name,sub_code FROM subject WHERE dept='$Department' AND sem='$Semester' ORDER BY sub_name ";
	$result = $conn->query($sql);
	if($result->num_rows > 0) {
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[] = array('state' => $row['sub_name']." ( ".$row['sub_code']." )");
		}
		header('Content-type: application/json');
		echo json_encode($data);
	}
?>