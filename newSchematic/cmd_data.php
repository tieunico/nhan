<?php
//connection parameters
$servername="localhost";
$username="root";
$password="";
$db="testDB";
//create connection and check
$conn = new mysqli ($servername, $username, $password, $db);
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
//database queries 5 latest data1
$sql_north = "SELECT * FROM sys_msg_north_crio ORDER BY timestamp DESC LIMIT 3";
$sql_south = "SELECT * FROM sys_msg_south_crio ORDER BY timestamp DESC LIMIT 3";

$result_north = mysqli_query($conn, $sql_north);
$result_south = mysqli_query($conn, $sql_south);

$array_north = array();
while($row=mysqli_fetch_assoc($result_north)){
    $array_north[] = $row;
}
$array_south = array();
while($row=mysqli_fetch_assoc($result_south)){
    $array_south[] = $row;
}
//merge arrays
$final_array = array_merge($array_north, $array_south);
//convert queries into json format
$jsonData = json_encode($final_array, JSON_PRETTY_PRINT);
//output json
print_r($jsonData);
//close connection of database
$conn->close();

?>
