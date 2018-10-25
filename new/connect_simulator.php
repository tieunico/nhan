<?php
$bayid=$_GET['bay'];
$bayvalue=$_GET['status'];
$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);

    $msg = $bayid.":".$bayvalue;
    $len = strlen($msg);

    socket_sendto($sock, $msg, $len, 0, '127.0.0.1', 528);
    socket_close($sock);

?>
