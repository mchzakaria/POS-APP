<?php
    header('Content-Type: application/json');
    try{
        $conn = mysqli_connect("localhost","root","","pos_db");
        $qery = "SELECT `uid`,`username`, `password`, `first_name`, `last_name`, `job` FROM `users_table` WHERE 1";
        $exe = mysqli_query($conn , $qery);
        $arr=[];
        while($row = mysqli_fetch_array($exe)){
            $arr[]=$row;
        }
        print(json_encode($arr));
    }catch(PDOException $e){
        echo $e->getMessage();
    }

?>