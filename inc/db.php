<?php

$host = 'localhost';
$dbname = 'novichp1_eng';
// $user = 'novichp1_eng';
// $pass = 'aA@41326789';
$user = 'root';
$pass = '';

try {
    $db = new PDO("mysql:$host=localhost;dbname=$dbname", $user, $pass);
} catch (PDOException $e) {
    echo $e->getMessage();
}



?>