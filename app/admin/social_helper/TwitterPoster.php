<?php

require '../vendor/autoload.php';

use Abraham\TwitterOAuth\TwitterOAuth;

class TwitterPoster {
    private $twitter;
    private $accessToken;
    private $accessTokenSecret;

    private $apiKey;
    private $apiSecretKey; 
    private $callbackUrl="http://localhost/wonderlook/admin/social_post_twitter.php";

    public function __construct($apiKey, $apiSecretKey, $accessToken, $accessTokenSecret) {
        $this->apiKey=$apiKey;
        $this->apiSecretKey=$apiSecretKey;
        $this->twitter = new TwitterOAuth($apiKey, $apiSecretKey, $accessToken, $accessTokenSecret);
        
       // $twitter = new TwitterOAuth($this->clientId, $this->clientSecret, $this->accessToken, $this->accessTokenSecret);
            
        // Attempt to get the authenticated user's account info (verifies token)
        $response = $this->twitter->get('account/verify_credentials');

        if ($this->twitter->getLastHttpCode() == 200) {
            echo "token valid";
        } else {
            echo $this->getRequestToken();
           
        }
        $this->accessToken = $accessToken;
        $this->accessTokenSecret = $accessTokenSecret;
    }

    public function getRequestToken() {
        $this->twitter = new TwitterOAuth($this->apiKey, $this->apiSecretKey);
        $requestToken = $this->twitter->oauth('oauth/request_token', ['oauth_callback' => $this->callbackUrl]);

        // Store oauth_token and oauth_token_secret to be used later
        $this->accessToken = $requestToken['oauth_token'];
        $this->accessTokenSecret = $requestToken['oauth_token_secret'];
        
        echo "token : ".$this->accessToken;
        echo "token secrete : ".$this->accessTokenSecret;
        // Get the authorization URL
        $this->twitter = new TwitterOAuth($this->apiKey, $this->apiSecretKey, $this->accessToken, $this->accessTokenSecret);
        return  $this->twitter->url('oauth/authorize', ['oauth_token' => $this->accessToken]);
    }


    // Check if access token is valid
    public function isAccessTokenValid() {
        $credentials = $this->twitter->get("account/verify_credentials");

        if ($this->twitter->getLastHttpCode() == 200) {
            return true; // Token is valid
        } else {
            return false; // Token is invalid, re-authentication needed
        }
    }

    // Post content to Twitter
    public function postTweet($message, $imagePath = null) {
        if (!$this->isAccessTokenValid()) {
            throw new Exception('Invalid access token. Please re-authenticate.');
        }

        if ($imagePath) {
            // Upload the image first
            $media = $this->twitter->upload('media/upload', ['media' => $imagePath]);
            $parameters = ['status' => $message, 'media_ids' => $media->media_id_string];
        } else {
            $parameters = ['status' => $message];
        }

        $response = $this->twitter->post("statuses/update", $parameters);

        if ($this->twitter->getLastHttpCode() == 200) {
            return $response; // Tweet posted successfully
        } else {
            throw new Exception('Failed to post tweet: ' . json_encode($response));
        }
    }
}
