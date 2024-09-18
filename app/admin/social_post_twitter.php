<?php
include 'social_helper/TwitterPoster.php';
use Abraham\TwitterOAuth\TwitterOAuth;
// Your Twitter API credentials

$TWITTER_CONSUMER_ID="QTibt0PJtKFHi8gk19X9MSXE6";
$TWITTER_CONSUMER_SECRET="xolbBuGVeahomQAEzLLYij29CtgRohivgjgA20m595mV2BsiGy";
$TWITTER_OAUTHTOKEN="1832316580367101952-0AdQIS4EGcsEVMurYiTxbzZqM0n8O7";
$TWITTER_OAUTHTOKEN_SECRET="Stfx7uJCMhnGIRDuNNAW1VASqtK6MjEhQERYZgTKdxwKi";

$apiKey = $TWITTER_CONSUMER_ID;
$apiSecretKey = $TWITTER_CONSUMER_SECRET;
$accessToken = $TWITTER_OAUTHTOKEN;
$accessTokenSecret = $TWITTER_OAUTHTOKEN_SECRET;
$callbackUrl="http://localhost/wonderlook/admin/social_post_twitter.php";


// Step 2: Initialize TwitterOAuth and request Bearer Token (OAuth 2.0)
//$connection = new TwitterOAuth($apiKey, $apiSecretKey);
//$bearer_token = $connection->oauth2('oauth2/token', ['grant_type' => 'client_credentials']);

// Check if Bearer Token was received successfully




// Step 3: Reinitialize connection with Bearer Token
//$connection = new TwitterOAuth($apiKey, $apiSecretKey, null, $bearer_token->access_token);
$connection = new TwitterOAuth($apiKey, $apiSecretKey, $accessToken, $accessTokenSecret);
echo "errror codee ".$connection->getLastHttpCode();


// Step 4: Post a tweet using Bearer Token
$tweet_content = "we captured some beautiful moments! Check out more behind-the-scenes in our story!";
$connection->setApiVersion(apiVersion: 2);
$parameters = [
    'text' => $tweet_content,
];
//$parameters = ['status' => $tweet_content];
//$response = $connection->post("statuses/update", ["status" => $tweet_content]);
$response = $connection->post('tweets', $parameters, ['jsonPayload' => true]);

// Step 5: Check for success
if ($connection->getLastHttpCode() == 200) {
    echo "Tweet posted successfully!";
} else {
    echo "Error posting tweet. HTTP Code: " . $connection->getLastHttpCode();
}

?>
   
           
        
   
    
// Define the tweet content

// Post the tweet





?>