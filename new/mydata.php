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
/*$sql="SELECT * FROM breaker1 WHERE ID=(SELECT max(ID) FROM breaker1)
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
*/
$sql1  =  "SELECT * FROM bay_1   order by id DESC LIMIT 1";
$sql2  =  "SELECT * FROM bay_2   order by id DESC LIMIT 1";
$sql3  =  "SELECT * FROM bay_3   order by id DESC LIMIT 1";
$sql4  =  "SELECT * FROM bay_4   order by id DESC LIMIT 1";
$sql5  =  "SELECT * FROM bay_5   order by id DESC LIMIT 1";
$sql6  =  "SELECT * FROM bay_6   order by id DESC LIMIT 1";
$sql7  =  "SELECT * FROM bay_7   order by id DESC LIMIT 1";
$sql8  =  "SELECT * FROM bay_8_9 order by id DESC LIMIT 1";
$sql9  =  "SELECT * FROM m1      order by id DESC LIMIT 1";
$sql10 =  "SELECT * FROM m2      order by id DESC LIMIT 1";
$sql11 =  "SELECT * FROM aux     order by id DESC LIMIT 1";
$sql12 =  "SELECT * FROM tie     order by id DESC LIMIT 1";

$result1=mysqli_query($conn, $sql1);
$result2=mysqli_query($conn, $sql2);
$result3=mysqli_query($conn, $sql3);
$result4=mysqli_query($conn, $sql4);
$result5=mysqli_query($conn, $sql5);
$result6=mysqli_query($conn, $sql6);
$result7=mysqli_query($conn, $sql7);
$result8=mysqli_query($conn, $sql8);
$result9=mysqli_query($conn, $sql9);
$result10=mysqli_query($conn, $sql10);
$result11=mysqli_query($conn, $sql11);
$result12=mysqli_query($conn, $sql12);

$arrayName1 = array();
while ($row=mysqli_fetch_assoc($result1)){
    $arrayName1[]=$row;
}
$arrayName2 = array();
while ($row=mysqli_fetch_assoc($result2)){
    $arrayName2[]=$row;
}
$arrayName3 = array();
while ($row=mysqli_fetch_assoc($result3)){
    $arrayName3[]=$row;
}
$arrayName4 = array();
while ($row=mysqli_fetch_assoc($result4)){
    $arrayName4[]=$row;
}
$arrayName5 = array();
while ($row=mysqli_fetch_assoc($result5)){
    $arrayName5[]=$row;
}
$arrayName6 = array();
while ($row=mysqli_fetch_assoc($result6)){
    $arrayName6[]=$row;
}
$arrayName7 = array();
while ($row=mysqli_fetch_assoc($result7)){
    $arrayName7[]=$row;
}
$arrayName8 = array();
while ($row=mysqli_fetch_assoc($result8)){
    $arrayName8[]=$row;
}
$arrayName9 = array();
while ($row=mysqli_fetch_assoc($result9)){
    $arrayName9[]=$row;
}
$arrayName10 = array();
while ($row=mysqli_fetch_assoc($result10)){
    $arrayName10[]=$row;
}
$arrayName11 = array();
while ($row=mysqli_fetch_assoc($result11)){
    $arrayName11[]=$row;
}
$arrayName12 = array();
while ($row=mysqli_fetch_assoc($result12)){
    $arrayName12[]=$row;
}

$final_array=array_merge(   $arrayName1,$arrayName2,
                            $arrayName3,$arrayName4,
                            $arrayName5,$arrayName6,
                            $arrayName7,$arrayName8,
                            $arrayName9,$arrayName10,
                            $arrayName11,$arrayName12
                        );


//$myFile="data1.json";
//display the array
//echo '<pre>';
//print_r($arrayName);
//echo '</pre>';
//convert array into json
$jsonData = json_encode($final_array, JSON_PRETTY_PRINT);
//write json into a file
//if(!file_put_contents($myFile, $jsonData)){
    //echo "no data recorded!";
//}
print_r( $jsonData);
//echo json_encode($arrayName);
$conn->close();
//header("refresh: 4; url=mydata.php");

?>
