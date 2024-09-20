<?php
require '../vendor/autoload.php';
use HTTP_Request2;

$mediaUploadUrl = 'https://upload.twitter.com/1.1/media/upload';
$request2 = new HTTP_Request2($mediaUploadUrl);
$request2->setMethod(HTTP_Request2::METHOD_POST);
  $request2->setHeader(array(
    'Content-Type' => 'application/json',
    'Authorization' => 'OAuth oauth_consumer_key="QTibt0PJtKFHi8gk19X9MSXE6",oauth_token="1832316580367101952-0AdQIS4EGcsEVMurYiTxbzZqM0n8O7",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1726676931",oauth_nonce="ZGGDNWzydoG",oauth_version="1.0",oauth_signature="bCaL8td%2BgGnn4VU00tZGj2WjH4A%3D"',
    'Cookie' => 'guest_id=v1%3A172667623597701603'
  ));
  $mediaFile = 'https://wonderlook/app/admin/post_img/post2.jpeg';
  $parameters = [
    'media' => $mediaFile,
];

// Set the request body as a JSON string
$request2->setBody(json_encode($parameters));

$mediaId ="";
try {
    // Send media upload request
    $response = $request2->send();
    $responseData = json_decode($response->getBody(), true);

    if (isset($responseData['media_id_string'])) {
        $mediaId = $responseData['media_id_string'];
    } else {
        throw new Exception('Failed to upload media: ' . $response->getBody());
    }
} catch (HTTP_Request2_Exception $e) {
    echo 'Error: ' . $e->getMessage();
    exit;
}
$request = new HTTP_Request2();
$request->setUrl('https://api.twitter.com/2/tweets');

$request->setMethod(HTTP_Request2::METHOD_POST);
$request->setConfig(array(
  'follow_redirects' => TRUE
));
$request->setHeader(array(
  'Content-Type' => 'application/json',
  'Authorization' => 'OAuth oauth_consumer_key="QTibt0PJtKFHi8gk19X9MSXE6",oauth_token="1832316580367101952-0AdQIS4EGcsEVMurYiTxbzZqM0n8O7",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1726676931",oauth_nonce="ZGGDNWzydoG",oauth_version="1.0",oauth_signature="bCaL8td%2BgGnn4VU00tZGj2WjH4A%3D"',
  'Cookie' => 'guest_id=v1%3A172667623597701603'
));
$request->setBody('{"text": "Hello everyone!","media_ids" => $mediaId}');
try {
  $response = $request->send();
  if ($response->getStatus() == 201) {
    echo $response->getBody();
  }
  else {
    echo 'Unexpected HTTP status: ' . $response->getStatus() . ' ' .
    $response->getReasonPhrase();
  }
}
catch(HTTP_Request2_Exception $e) {
  echo 'Error: ' . $e->getMessage();
}

?>
   
           
        
   
    
// Define the tweet content

// Post the tweet



