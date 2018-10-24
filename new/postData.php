<?php
// make connection to database
include '/xampp/htdocs/design/nhan/new/connect_db.php';
//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}
$stat=$_REQUEST['name'];
$sql= "INSERT into breaker1 (status) values($stat)";
if (mysqli_query($conn,$sql)){
    echo "New data inserted sucessfuly";
}
mysqli_close($conn);
?>
