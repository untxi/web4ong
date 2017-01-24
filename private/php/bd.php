<?php
/*$servername = "mississippi.ic-itcr.ac.cr";
$username = "ealvarez";
$password = "ealvarez";*/
$servername = "localhost";
$username = "root";
$password = "";

$BD = "ong";

$conn= new mysqli($servername,$username,$password,$BD);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else{
	echo "conectada a DB ealvarez";
}
?>