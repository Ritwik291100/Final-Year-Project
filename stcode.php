<?php
	require '../Variables/variables.php';
	require 'InitializeUser.php';
	require 'usertables.php';
	
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT s_code FROM $table7 WHERE s_name='".$_GET['tid']."'";
	
	$result = $conn->query($sql);
	if($result->num_rows > 0) {
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[] = array('code' => $row['s_code']);
		}
		header('Content-type: application/json');
		echo json_encode($data);
	}
?>
