<?php
	
	
	// Create connection
	$conn=mysqli_connect("localhost","root","","doit");
	
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT faculty FROM sub_fac WHERE sub_name='".$_GET['tid']."'";
	
	$result = $conn->query($sql);
	if($result->num_rows > 0) {
		$data = array();
		while($row = $result->fetch_assoc()){
		//$row = $result->fetch_assoc();
		$data[] = array('code' => $row['faculty']);
		}
		header('Content-type: application/json');
		echo json_encode($data);
	}
?>