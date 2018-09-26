<?php

$servername="localhost";
$username="root";
$password="";
$db="test";

$conn = new mysqli ($servername, $username, $password, $db);

//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
echo"Connect successfully!";
echo "<br>";

//Select data from database
$sql="SELECT* FROM bay_1 where id<5";
$result=mysqli_query($conn, $sql);

$arrayName = array( );
while ($row=mysqli_fetch_assoc($result)) {
    $arrayName[]=$row;
}
//display the array
echo '<pre>';
print_r($arrayName);
echo '</pre>';
//convert array into json
//echo json_encode($arrayName);

//foreach ($arrayName as $value) {
    //print_r( $value=$arrayName);
    //echo "<br>";
//}
$myFile = "data.json";
$jsonData = json_encode($arrayName, JSON_PRETTY_PRINT);
//write data from database to 'data.json' fiel
if(file_put_contents($myFile, $jsonData)){
  echo "data recorded successfully!";
}else {
  echo "failed to write data into data.json";
}
$conn->close();
?>
