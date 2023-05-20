<?php
header('Content-Type: application/json');
try{
    $conn = mysqli_connect("localhost","root","","pos_db");

    $uid = $_POST["uid"] ?? null ;
    $query = "DELETE FROM `users_table` WHERE uid='$uid'";
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