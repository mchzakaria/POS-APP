<?php
header('Content-Type: application/json');
try{
    $conn = mysqli_connect("localhost","root","","pos_db");

    $id_order = $_POST["id_order"] ?? null;
    $date_order = $_POST["date_order"] ?? null;
    $id_article = $_POST["id_article"] ?? null;
    $quantity = $_POST["quantity"] ?? null;
    $note = $_POST["note"] ?? null;
    $num_table = $_POST["num_table"] ?? null;
    $nom_serveur = $_POST["nom_serveur"] ?? null;
    $total_price = $_POST["total_price"] ?? null;
    $payed = $_POST["payed"] ?? null ;

    $query = "INSERT INTO `order_list`(`id_order`, `date_order`, `id_article`, `quantity`, `note`, `num_table`, `nom_serveur`, `total_price`, `payed`) VALUES 
    ('$id_order','$date_order','$id_article','$quantity','$note','$num_table','$nom_serveur','$total_price','$payed')";
    
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