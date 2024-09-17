
<?php
include 'includes/session.php';
include 'includes/slugify.php';

if (isset($_POST['post'])) {
    $content = $_POST['postContent'];
    $title= $_POST['postTitle'];
    $filename = $_FILES['postImage']['name'];
    $conn = $pdo->open();


    try {
        $ext = pathinfo($filename, PATHINFO_EXTENSION);

        $new_filename = uniqid();

        $sourceProperties = getimagesize($_FILES['postImage']['tmp_name']);
        $resizeFileName = $new_filename;
        $folderPath = "post_img/";

        $imageType = $sourceProperties[2];

        switch ($imageType) {


            case IMAGETYPE_JPEG:
                $resourceType = imagecreatefromjpeg($_FILES['postImage']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagejpeg($imageLayer, $folderPath .  $new_filename . '.' . $ext);
                break;

            case IMAGETYPE_GIF:
                $resourceType = imagecreatefromgif($_FILES['postImage']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagegif($imageLayer, $folderPath .  $new_filename . '.' . $ext);
                break;

            case IMAGETYPE_PNG:
                $resourceType = imagecreatefrompng($_FILES['postImage']['tmp_name']);
                $imageLayer = resizeImage($resourceType, $sourceProperties[0], $sourceProperties[1], 520, 400);
                imagepng($imageLayer, $folderPath .  $new_filename . '.' . $ext);
                break;

            default:
                $imageProcess = 0;
                break;
        }

        move_uploaded_file($_FILES['postImage']['tmp_name'], $folderPath . $new_filename . '.' . $ext);

        $stmt = $conn->prepare("INSERT INTO social_post (content,image,title) VALUES (:content,:image,:title)");
        $stmt->execute(['content' => $content, 'image' => $folderPath . $new_filename . '.' . $ext,'title'=>$title]);
        $_SESSION['success'] = 'post  successfully posted';
    } catch (PDOException $e) {
        $_SESSION['error'] = $e->getMessage();
    }


    $pdo->close();
} else {
    $_SESSION['error'] = 'Fill up all required field first!';
}
function resizeImage($resourceType, $image_width, $image_height, $resizeWidth, $resizeHeight)
{
    // $resizeWidth = 100;
    // $resizeHeight = 100;
    $imageLayer = imagecreatetruecolor($resizeWidth, $resizeHeight);
    imagecopyresampled($imageLayer, $resourceType, 0, 0, 0, 0, $resizeWidth, $resizeHeight, $image_width, $image_height);
    return $imageLayer;
}
function imageResize($imageResourceId, $width, $height)
{


    $targetWidth = 520;
    $targetHeight = 400;


    $targetLayer = imagecreatetruecolor($targetWidth, $targetHeight);
    imagecopyresampled($targetLayer, $imageResourceId, 0, 0, 0, 0, $targetWidth, $targetHeight, $width, $height);


    return $targetLayer;
}
header('location: social_media_post_list.php');

?>