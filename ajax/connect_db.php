<?php
    $servername="localhost";
    $username="root";
    $password="";
    $db="testDB";

    $conn = mysqli_connect($servername, $username, $password, $db);

    //Check connection
    if(mysqli_connect_error()){
        die("Connection failed: ".mysqli_connect_error());
    }
    echo"Connect successfully!";
    echo "<br>";

    $sql="SELECT status FROM breaker1";
    $result=mysqli_query($conn,$sql);

    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            echo $row["status"]."<br>";
        }
    }

?>
