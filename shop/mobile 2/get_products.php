<?php 
header('Access-Control-Allow-Origin: *');
header('Content-type:application/json;charset=utf-8');
	include 'includes/session.php';
	
	       $conn = $pdo->open();
	       $stmt = $conn->prepare("SELECT id,brand,name,photo,price FROM products WHERE display=0 ORDER BY counter DESC LIMIT 10");
		   $stmt->execute();
		   foreach ($stmt as $row[]) {
						    //	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
					
	       	$item = $row;
	 
	       $json = json_encode($item, JSON_NUMERIC_CHECK);	
		}

	 echo $json;
	 $pdo->close();
?>