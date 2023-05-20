<?php
header('Content-Type: application/json');
try{
    $conn = mysqli_connect("localhost","root","","pos_db");

    $uid = $_POST["uid"] ?? null ;
    $username = $_POST["username"] ?? null;
    $password = $_POST["password"] ?? null;
    $first_name = $_POST["first_name"] ?? null;
    $last_name = $_POST["last_name"] ?? null;
    $job = $_POST["job"] ?? null;

    $query = "UPDATE `users_table` SET `username`='$username',`password`='$password',`first_name`='$first_name',`last_name`='$last_name',`job`='$job' WHERE `uid`=$uid ";
    $exe = mysqli_query($conn , $query);
    $arr = [];
    if($exe){
        $arr["success"]="true";
    }
    else{
        $arr["success"]="false";
    }
    print(json_encode($arr));

}catch(PDOException $e){
    echo $e->getMessage();
}
    

?> 