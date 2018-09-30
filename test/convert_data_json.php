<?php

$servername="localhost";
$username="root";
$password="";
$db="testDB";

$conn = new mysqli ($servername, $username, $password, $db);

//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
echo"Connect successfully!";
echo "<br>";

//Select data from database
$sql="SELECT* FROM breaker1 where id>=16 AND id<=26";
$result=mysqli_query($conn, $sql);

$arrayName = array( );
while ($row=mysqli_fetch_assoc($result)) {
    $arrayName[]=$row;
}
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

$conn->close();

?>
