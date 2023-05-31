<?php
    session_start();
    header('Content-Type: application/json');
    try{
        $conn = mysqli_connect("localhost","root","","pos_db");

        $username = $_POST["username"] ?? null;
        $password = $_POST["password"] ?? null;
          // Prepare statement and bind parameters
            $sql = "SELECT `uid`,`job`, LEFT(`first_name`, 1) as `first_name` , LEFT(`last_name`, 1) as `last_name`, CONCAT(`first_name`, ' ' ,`last_name`) AS full_name FROM users_table WHERE `username`='$username' AND `password` = '$password' ";
            $result = mysqli_query($conn, $sql);
                // Check if a record was found
                // if (mysqli_num_rows($result) > 0) {
                // // Retrieve the role from the record
                // $row = mysqli_fetch_assoc($result);
                // $role = $row['job'];
                // $myid = $row['uid'];
                // if ($role == 'Admin') {
                //     echo "Admin" ;
                // } else {
                //     echo "Not Admin" ;
                // }
                // } else {
                //     echo "Doesn't Exist";
                // }
                $_SESSION['username'] = $username ;
                $_SESSION['password'] = $password ;
                $arr=[];
                while($row = mysqli_fetch_array($result)){
                    $arr[] = $row;
                }
                print(json_encode($arr));
                // Close the database connection
                mysqli_close($conn);
            
    }catch(PDOException $e){
        echo $e->getMessage();
    }
?>  