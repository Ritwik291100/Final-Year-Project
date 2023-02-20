<?php
// database connection details
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'food';

// create a new database connection
$conn = mysqli_connect($host, $user, $password, $database);

// check for connection errors
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>