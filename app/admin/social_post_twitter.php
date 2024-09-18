<?php
include 'social_helper/TwitterPoster.php';
use Abraham\TwitterOAuth\TwitterOAuth;
// Your Twitter API credentials

$TWITTER_CONSUMER_ID="78WSO817F9qDp5h58twffNpxs";
$TWITTER_CONSUMER_SECRET="xxIHreDIvS3YiqcWUgMDElNkBn0eWjdzWU5Gzf58w9IltaeoD6";
$TWITTER_OAUTHTOKEN="1832316580367101952-YuhOHP72gApjnFrlNGj0Nrz6PQ9qe8";
$TWITTER_OAUTHTOKEN_SECRET="hyQj3p8T0FcCNlQyoVWcetWtpf9HKTsPrpX4TNb1SVaH5";

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