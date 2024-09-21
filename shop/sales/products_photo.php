<?php
	include 'includes/session.php';
    include 'includes/slugify.php';
    
	if(isset($_POST['upload'])){
	   $conn = $pdo->open();
	   	$id = $_POST['id'];
	    $stmt1 = $conn->prepare("SELECT * FROM products WHERE id=:id");
		$stmt1->execute(['id'=>$id]);
		$row1 = $stmt1->fetch();
	    
	
	    $slug = slugify($row1["name"]);
	
		$filename1 = $_FILES['photo']['name'];
		$filename2 = $_FILES['photo2']['name'];
		$filename3 = $_FILES['photo3']['name'];
		$filename4 = $_FILES['photo4']['name'];
		
		
		

		

		$stmt = $conn->prepare("SELECT * FROM products WHERE id=:id");
		$stmt->execute(['id'=>$id]);
		$row = $stmt->fetch();

		if(!empty($filename1)){
			$ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
			$ext2 = pathinfo($filename2, PATHINFO_EXTENSION);
			$ext3 = pathinfo($filename3, PATHINFO_EXTENSION);
			$ext4 = pathinfo($filename4, PATHINFO_EXTENSION);
			
				$new_filename1 = $slug.'1.'.$ext1;
				$new_filename2 = $slug.'2.'.$ext2;
				$new_filename3 = $slug.'3.'.$ext3;
				$new_filename4 = $slug.'4.'.$ext4;
				$new_filename_small = $slug.'1';
			
		$sourceProperties = getimagesize($_FILES['photo']['tmp_name']);
        $resizeFileName =$new_filename_small;
        $folderPath = "../images/";
        $ext = pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);
        $imageType = $sourceProperties[2];
				
		switch ($imageType) {


           case IMAGETYPE_JPEG:
                $resourceType = imagecreatefromjpeg($_FILES['photo']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagejpeg($imageLayer, $folderPath . "thump_" . $new_filename_small . '.' . $ext);
            break;

            case IMAGETYPE_GIF:
                $resourceType = imagecreatefromgif($_FILES['photo']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagegif($imageLayer, $folderPath . "thump_" . $new_filename_small . '.' . $ext);
            break;

            case IMAGETYPE_PNG:
                $resourceType = imagecreatefrompng($_FILES['photo']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagepng($imageLayer, $folderPath . "thump_" . $new_filename_small . '.' . $ext);
            break;

            case IMAGETYPE_JPG:
                $resourceType = imagecreatefromjpg($_FILES['photo']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagepng($imageLayer, $folderPath . "thump_" . $new_filename_small . '.' . $ext);
            break;

            default:
                $imageProcess = 0;
            break;
        }
			
		    
			
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$new_filename1);
			move_uploaded_file($_FILES['photo2']['tmp_name'], '../images/'.$new_filename2);	
			move_uploaded_file($_FILES['photo3']['tmp_name'], '../images/'.$new_filename3);	
			move_uploaded_file($_FILES['photo4']['tmp_name'], '../images/'.$new_filename4);	
		}
		
		try{
			$stmt = $conn->prepare("UPDATE products SET photo=:file1,  photo1=:file2, photo2=:file3, photo3=:file4 WHERE id=:id");
			$stmt->execute(['file1'=>$new_filename1,'file2'=>$new_filename2,'file3'=>$new_filename3,'file4'=>$new_filename4, 'id'=>$id]);
			$_SESSION['success'] = 'Product photo updated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();

	}
	else{
		$_SESSION['error'] = 'Select product to update photo first';
	}
	
		function resizeImage($resourceType, $image_width, $image_height, $resizeWidth, $resizeHeight)
{
    // $resizeWidth = 100;
    // $resizeHeight = 100;
    $imageLayer = imagecreatetruecolor($resizeWidth, $resizeHeight);
    imagecopyresampled($imageLayer, $resourceType, 0, 0, 0, 0, $resizeWidth, $resizeHeight, $image_width, $image_height);
    return $imageLayer;
}
	function imageResize($imageResourceId,$width,$height) {


    $targetWidth =520;
    $targetHeight =400;


    $targetLayer=imagecreatetruecolor($targetWidth,$targetHeight);
    imagecopyresampled($targetLayer,$imageResourceId,0,0,0,0,$targetWidth,$targetHeight, $width,$height);


    return $targetLayer;
}

	header('location: products.php');
?>