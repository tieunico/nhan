<?php
/*
//login to db
$conn=mysqli_connect("localhost","root","","breakers")
$result=mysql_query($conn,"SELECT * FROM bay1 ORDER BY timestamp DESC LIMIT 1");

//store in array
$data=array();
echo array;
while($row=mysqli_fetch_assoc($result)){
  $data[]=$row;
}
//return data in JSON format
echo json_encode($data);
*/

$servername="localhost";
$username="root";
$password="";
$db="breakers";

$conn = new mysqli ($servername, $username, $password, $db);

//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
//echo"Connect successfully!";
//echo "<br>";

//Select data from database
$sql="SELECT* FROM bay1";
$result=mysqli_query($conn, $sql);

$arrayName = array( );
while ($row=mysqli_fetch_assoc($result)) {
    $arrayName[]=$row;
}
/*
$myFile="data1.json";
//display the array
//echo '<pre>';
//print_r($arrayName);
//echo '</pre>';
//convert array into json
$jsonData = json_encode($arrayName, JSON_PRETTY_PRINT);
//write json into a file
if(file_put_contents($myFile, $jsonData)){
    echo "data have been recorded in the file!";
}else {
    echo "no data was recorded in the file!";
}
*/

echo json_encode($arrayName);
$conn->close();
