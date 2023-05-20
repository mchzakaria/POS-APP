<?php
include 'test.php';

if(isset($_POST["type"])){
    $type = $_POST["type"];
}
else return ;
    $test = new test($type);
    $test->getboisson_ch($type);
?>