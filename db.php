<?php
$db_name = "webgdpuj_equdb";
$db_user = "webgdpuj_eqususer";
$db_pass = "webgdpuj_equdb";

    $con = mysqli_connect("localhost", $db_user, $db_pass, $db_name );
    if (!$con){
        die("Database Connection Failed" . mysqli_error($con));
    }
    // date_default_timezone_set('Africa/Lagos');
    ?>