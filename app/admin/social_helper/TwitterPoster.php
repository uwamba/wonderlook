<?php

require 'vendor/autoload.php';

use Abraham\TwitterOAuth\TwitterOAuth;

class TwitterPoster {
    private $twitter;
    private $accessToken;
    private $accessTokenSecret;

    public function __construct($apiKey, $apiSecretKey, $accessToken, $accessTokenSecret) {
        $this->twitter = new TwitterOAuth($apiKey, $apiSecretKey, $accessToken, $accessTokenSecret);
        $this->accessToken = $accessToken;
        $this->accessTokenSecret = $accessTokenSecret;
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
