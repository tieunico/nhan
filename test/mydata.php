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
//echo"Connect successfully!";
//echo "<br>";

//Select data from database
$sql="SELECT * FROM `breaker1` WHERE reg_time=(SELECT max(reg_time) FROM breaker1)";
/*$sql="SELECT breaker1.voltage, breaker1.current, breaker1.status, breaker1.po, breaker2.voltage as voltage2, breaker2.current as current2, breaker2.status as status2, breaker2.po as po2
        FROM breaker1
        INNER JOIN breaker2
        WHERE breaker1.ID=breaker2.ID;";*/
/*$sql="SELECT * FROM breaker1 WHERE reg_time=(SELECT max(reg_time) FROM breaker1) UNION ALL
        SELECT * FROM breaker2 WHERE reg_time=(SELECT max(reg_time) FROM breaker2) UNION ALL
        SELECT * FROM breaker3 WHERE reg_time=(SELECT MAX(reg_time) FROM breaker3) UNION ALL
        SELECT * FROM breaker4 WHERE reg_time=(SELECT MAX(reg_time) FROM breaker4)"*/
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
$a=1;
while ($a <= 10) {
    $jsonData = json_encode($arrayName, JSON_PRETTY_PRINT);
    if(file_put_contents($myFile, $jsonData)){
        echo "data have been recorded in the file!";
    }else {
        echo "no data was recorded in the file!";
    }
    $a++;
}


//write json into a file
if(file_put_contents($myFile, $jsonData)){
    echo "data have been recorded in the file!";
}else {
    echo "no data was recorded in the file!";
}

//echo json_encode($arrayName);
/*
class Student{
    var $firstName;
    var $lastName;
    var $studentId;
    var $studentGrade;
}
$student1 = new Student;
$student1 -> firstName    = "Nhan";
$student1 -> lastName     = "Pham";
$student1 -> studentId    = "123";
$student1 -> studentGrade = "A";

echo "Student full name is ". $student1->firstName . " " .$student1->lastName."<br>";
print_r($student1);
echo "<br>";
echo json_encode($student1, JSON_PRETTY_PRINT);
*/

$conn->close();

?>
