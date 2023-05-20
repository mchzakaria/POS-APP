<?php
header('Content-Type: application/json');
try{
    $conn = mysqli_connect("localhost","root","","pos_db");
    if(isset($_POST["url"])){
        $url = $_POST["url"];
    }
    else return ;
    if(isset($_POST["name"])){
        $name = $_POST["name"];
    }
    else return ;
    if(isset($_POST["price"])){
        $price = $_POST["price"];
    }
    else return ;
    if(isset($_POST["type"])){
        $type = $_POST["type"];
    }
    else return ;

    $query = "INSERT INTO `pos_table`(`url`, `name`, `price`, `type`) VALUES 
    ('$url','$name','$price','$type')";
    
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