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
$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);

    $msg = "bay_1:open";
    $len = strlen($msg);

    socket_sendto($sock, $msg, $len, 0, '127.0.0.1', 528);
    socket_close($sock);

?>
