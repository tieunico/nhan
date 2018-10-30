<?php
/*
If you want to connect to the simulator
First: enable socket inside the php.ini file
How to enable socket is shown below.
The php.ini is in this directory xampp>>php>>php.ini
Open php.ini file with notepad or notepadd++
Then search for ;extension=sockets
Change ;extension=sockets to extension=sockets and save it.
Now you can run the code.
*/
//create connection to database
$servername="localhost";
$username="root";
$password="";
$db="testDB";

$conn = new mysqli ($servername, $username, $password, $db);

//Check connection
if(mysqli_connect_error()){
    die("Connection failed: ".mysqli_connect_error());
}

  define("N_CRIO_IP", '127.0.0.1'); //like a #define or const
  define("S_CRIO_IP", '127.0.0.1');
  $IP='';

  $bayId=$_GET['id'];
  $op=$_GET['op'];
  $opBay=$bayId.":".$op;

  switch ($bayId) {   //switch statement defines which dest ip to use
    case "M2":
    case "AUX":
    case "TIE":
    case "Bay_1":
    case "Bay_2":
    case "Bay_3":
    case "Bay_4":
      $IP=S_CRIO_IP;
    $sql_south = "INSERT INTO sys_msg_south_crio (bay_id,command) values('$bayId','$opBay')";
    if (mysqli_query($conn,$sql_south)){
        echo "new data recorded!";
    }else {
        echo "error:".$sql_south."<br>".mysqli_error($conn);
    }
      break;
    case "Bay_5":
    case "Bay_6":
    case "Bay_7":
    case "Bay_8/9":
      $IP=N_CRIO_IP;
    $sql_north = "INSERT INTO sys_msg_north_crio (bay_id,command) values('$bayId','$opBay')";
    if (mysqli_query($conn,$sql_north)){
        echo "new data recorded!";
    }else {
        echo "error:".$sql_north."<br>".mysqli_error($conn);
    }
      break;
  }
  //for debug
//  echo("<script>console.log('PHP: ".$bayId."');</script>");  //this doesnt work
  $sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
  $msg = $bayId.":".$op;
  $len = strlen($msg);

  socket_sendto($sock, $msg, $len, 0, $IP, 528);    //udp packet on port 528
  socket_close($sock);

?>
