<html>
    <head>
        <title>
        </title>
        <style>
            table{
                border-collapse: collapse;
                width: 100%;
                color: blue;
                font-family: monospace;
                font-size: 25px;
                text-align: left;
            }
            th{
                background-color: purple;
                color: white;
            }
            tr:nth-child(even){
                background-color: #f2f2f2;
            }
        </style>
    </head>

    <body>
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $db = "testDB";
            //Create connection to Database
            $conn = new mysqli( $servername = "localhost",
                                $username = "root",
                                $password = "",
                                $db = "testDB");
            //Check connection
            if (mysqli_connect_error()) {
                die("Connection failed " . mysqli_connect_error());
            }
            echo "Connect successfully!";
            echo "<br>";
            //Display data in breaker2 in the table form
            $display_breaker2 = "SELECT id, current, power, voltage, status, reg_time FROM bay_1";
            $result = $conn->query($display_breaker2);

            if (mysqli_num_rows($result) > 0) {
                //output data from each row
                echo "<table><tr><th>ID</th><th>Current</th><th>Power</th><th>Voltage</th><th>Status</th><th>Register Time</th></tr>";

                while ($row= mysqli_fetch_assoc($result)) {
                    echo "<tr><td>".$row["id"]."</td><td>".$row["current"]."</td>
                    <td>".$row["power"]."</td><td>".$row["voltage"]."</td>
                    <td>".$row["status"]."</td><td>".$row["reg_time"]."</td></tr>";
                }
                echo "</table>";
            }else {
                echo "0 Result!";
            }

            $conn->close();
        ?>
        <script>
        </script>
    </body>
</html>
