<?php
require '../vendor/autoload.php';
use HTTP_Request2;

$pageId = '410045788864366';
$accessToken = '0006b3f89852e5efd83b2d208e948a07';
$imageUrl = 'https://wonderlook/app/admin/post_img/post2.jpeg';  // Image URL or you can use local file path
$message = 'hello!';


$appId = '520833983791432';           // Your Facebook App ID
$appSecret = '122105712530503372';   // Your Facebook App Secret
$redirectUri = 'http://wonderlook.rw/app/admin/social_media_post_facebook.php'; // Your Redirect URL (configured in the app's settings)
$authCode = 'CODE_FROM_FACEBOOK';  // Code received after user authorizes the app

$request = new HTTP_Request2();
$request->setUrl('https://graph.facebook.com/v17.0/oauth/access_token');
$request->setMethod(HTTP_Request2::METHOD_POST);

// Set parameters as query
$request->setConfig(array(
    'client_id' => $appId,
    'client_secret' => $appSecret,
    'redirect_uri' => $redirectUri,
    'code' => $authCode,
));

try {
    // Send the request and get the response
    $response = $request->send();
    
    if ($response->getStatus() == 200) {
        $responseData = json_decode($response->getBody(), true);
        $accessToken = $responseData['access_token'];
        echo 'Access Token: ' . $accessToken;
    } else {
        echo 'Error: ' . $response->getBody();
    }
} catch (HTTP_Request2_Exception $e) {
    echo 'Error: ' . $e->getMessage();
}





$request = new HTTP_Request2();
$request->setUrl("https://graph.facebook.com/{$pageId}/photos");
$request->setMethod(HTTP_Request2::METHOD_POST);

// Add the necessary parameters
$request->addPostParameter('url', $imageUrl); // For URL-based image
// $request->addUpload('source', '/path-to-your-image.jpg');  // For local image
$request->addPostParameter('caption', $message);
$request->addPostParameter('access_token', $accessToken);

try {
    // Send the request and get the response
    $response = $request->send();
    
    if ($response->getStatus() == 200) {
        echo 'Post created successfully: ' . $response->getBody();
    } else {
        echo 'Error: ' . $response->getBody();
    }
} catch (HTTP_Request2_Exception $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
