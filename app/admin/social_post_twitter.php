<?php
require_once 'HTTP/Request2.php';
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
$request->setBody('{\n    "text": "Hello everyone!"\n}');
try {
  $response = $request->send();
  if ($response->getStatus() == 200) {
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



