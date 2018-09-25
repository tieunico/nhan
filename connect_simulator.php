<?php
$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);

    $msg = "bay_1:open";
    $len = strlen($msg);

    socket_sendto($sock, $msg, $len, 0, '127.0.0.1', 528);
    socket_close($sock);

?>
