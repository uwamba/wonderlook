<?php 

$servername = "localhost";
$username = "wonderlo_shop_user";
$password = "Password@2024";
$db = "wonderlo_shop";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Failed " . $e->getMessage();
}

?>