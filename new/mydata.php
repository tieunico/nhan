<?php
//include '/xampp/htdocs/design/nhan/new/connect_db.php';
$servername="localhost";
$username="root";
$password="";
$db="testDB";

$conn = new mysqli ($servername, $username, $password, $db);

//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
//echo"Connect successfully!";
//echo "<br>";

//Select data from database
//$sql="SELECT * FROM `breaker1` WHERE reg_time=(SELECT max(reg_time) FROM breaker1)";
/*$sql="SELECT breaker1.voltage, breaker1.current, breaker1.status, breaker1.po, breaker2.voltage as voltage2, breaker2.current as current2, breaker2.status as status2, breaker2.po as po2
        FROM breaker1
        INNER JOIN breaker2
        WHERE breaker1.ID=breaker2.ID;";*/
$sql="SELECT * FROM breaker1 WHERE ID=(SELECT max(ID) FROM breaker1)
UNION ALL
SELECT * FROM breaker2 WHERE ID=(SELECT max(ID) FROM breaker2)
UNION ALL
SELECT * FROM breaker3 WHERE ID=(SELECT MAX(ID) FROM breaker3)
UNION ALL
SELECT * FROM breaker4 WHERE ID=(SELECT MAX(ID) FROM breaker4)
UNION ALL
SELECT * FROM breaker5 WHERE ID=(SELECT MAX(ID) FROM breaker5)
UNION ALL
SELECT * FROM breaker6 WHERE ID=(SELECT MAX(ID) FROM breaker6)
UNION ALL
SELECT * FROM breaker7 WHERE ID=(SELECT MAX(ID) FROM breaker7)
UNION ALL
SELECT * FROM breaker_8_9 WHERE ID=(SELECT MAX(ID) FROM breaker_8_9)
UNION ALL
SELECT * FROM breaker_m1 WHERE ID=(SELECT MAX(ID) FROM breaker_m1)
UNION ALL
SELECT * FROM breaker_m2 WHERE ID=(SELECT MAX(ID) FROM breaker_m2)
UNION ALL
SELECT * FROM breaker_aux WHERE ID=(SELECT MAX(ID) FROM breaker_aux)
UNION ALL
SELECT * FROM breaker_tie WHERE ID=(SELECT MAX(ID) FROM breaker_tie)";
$result=mysqli_query($conn, $sql);

$arrayName = array( );
while ($row=mysqli_fetch_assoc($result)) {
    $arrayName[]=$row;
}

//$myFile="data1.json";
//display the array
//echo '<pre>';
//print_r($arrayName);
//echo '</pre>';
//convert array into json
$jsonData = json_encode($arrayName, JSON_PRETTY_PRINT);
//write json into a file
//if(!file_put_contents($myFile, $jsonData)){
    //echo "no data recorded!";
//}
print_r( $jsonData);
//echo json_encode($arrayName);
$conn->close();
//header("refresh: 4; url=mydata.php");

?>
