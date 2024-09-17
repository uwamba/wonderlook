<?php

require '../vendor/autoload.php';

use Facebook\Exceptions\FacebookResponseException;
use Facebook\Exceptions\FacebookSDKException;
use Facebook\Facebook;
use GuzzleHttp\Client;

class FacebookPoster {
    public $facebook;
    public $accessToken;
    public $clientId;
    public $clientSecret;

    public function __construct($clientId, $clientSecret, $accessToken) {
        $this->clientId = $clientId;
        $this->clientSecret = $clientSecret;
        $this->accessToken = $accessToken;

        $this->facebook = new Facebook([
            'app_id' => $clientId,
            'app_secret' => $clientSecret,
            'default_graph_version' => 'v16.0',
        ]);
    }

    // Check if access token is valid
    public function isAccessTokenValid() {
        try {
            $response = $this->facebook->get('/debug_token?input_token=' . $this->accessToken . '&access_token=' . $this->accessToken);
            $data = $response->getDecodedBody();

            if ($data['data']['is_valid']) {
                return true;
            } else {
                return false;
            }
        } catch (FacebookSDKException $e) {
            echo 'Error: ' . $e->getMessage();
            return false;
        }
    }

    // Extend short-lived token to long-lived
    public function extendAccessToken() {
        try {
            $response = $this->facebook->get('/oauth/access_token', [
                'client_id' => $this->clientId,
                'client_secret' => $this->clientSecret,
                'grant_type' => 'fb_exchange_token',
                'fb_exchange_token' => $this->accessToken,
            ]);

            $data = $response->getDecodedBody();
            $this->accessToken = $data['access_token']; // Update the access token
            return $this->accessToken;
        } catch (FacebookSDKException $e) {
            echo 'Error: ' . $e->getMessage();
            return false;
        }
    }

    // Post content to Facebook
    public function postContent($message) {
        if (!$this->isAccessTokenValid()) {
            // Extend token if invalid
            $this->extendAccessToken();
        }

        try {
            $response = $this->facebook->post('/me/feed', ['message' => $message], $this->accessToken);
            return $response->getDecodedBody();
        } catch (FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
        } catch (FacebookSDKException $e) {
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
        }
    }
}
