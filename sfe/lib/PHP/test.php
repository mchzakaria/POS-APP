<?php

    class test{
        public $name ; 
        public function __construct($type) {
            $this->name = $type;
        }
        public function getboisson_ch($name)
        {
            try{
                $conn = mysqli_connect("localhost","root","","pos_db");
                $qery = "SELECT `url`, `name`,`price`, `type`, `uid` FROM `pos_table` WHERE type= '$name'";
                // $qery = "SELECT `url`, `name`,`price`, `type` FROM `pos_table` WHERE `name` like '%$input%' ";
                $exe = mysqli_query($conn , $qery);
                $arr=[];
                while($row = mysqli_fetch_array($exe)){
                    $arr[]=$row;
                }
                print(json_encode($arr));
                
            }catch(PDOException $e){
                echo $e->getMessage();
            } 
        }
    }
?>