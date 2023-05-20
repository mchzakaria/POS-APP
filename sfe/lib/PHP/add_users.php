<?php
header('Content-Type: application/json');
try{
    $conn = mysqli_connect("localhost","root","","pos_db");

    $username = $_POST["username"] ?? null;
    $password = $_POST["password"] ?? null;
    $first_name = $_POST["first_name"] ?? null;
    $last_name = $_POST["last_name"] ?? null;
    $job = $_POST["job"] ?? null;

    $query = "INSERT INTO `users_table`(`username`, `password`, `first_name`, `last_name`, `job`) VALUES 
    ('$username','$password','$first_name','$last_name','$job')";
    
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