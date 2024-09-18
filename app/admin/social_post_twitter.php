<?php
require '../vendor/autoload.php';

use GuzzleHttp\Client;

$client = new Client();
$headers = [
  'Content-Type' => 'application/json',
  'Authorization' => 'OAuth oauth_consumer_key="QTibt0PJtKFHi8gk19X9MSXE6",oauth_token="1832316580367101952-0AdQIS4EGcsEVMurYiTxbzZqM0n8O7",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1726676931",oauth_nonce="ZGGDNWzydoG",oauth_version="1.0",oauth_signature="bCaL8td%2BgGnn4VU00tZGj2WjH4A%3D"',
  'Cookie' => 'guest_id=v1%3A172667623597701603'
];
$body = '{
  "text": "Hello everyone!"
}';
$request = new Request('POST', 'https://api.twitter.com/2/tweets', $headers, $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();

?>