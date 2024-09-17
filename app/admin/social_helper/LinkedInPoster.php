<?php

require '../vendor/autoload.php';

use Happyr\LinkedIn\LinkedIn;
use GuzzleHttp\Client;

class LinkedInPoster {
    private $linkedin;
    private $clientId;
    private $clientSecret;
    private $accessToken;
    private $refreshToken;

    public function __construct($clientId, $clientSecret, $accessToken, $refreshToken) {
        $this->clientId = $clientId;
        $this->clientSecret = $clientSecret;
        $this->accessToken = $accessToken;
        $this->refreshToken = $refreshToken;
        
        $this->linkedin = new LinkedIn($this->clientId, $this->clientSecret);
        $this->linkedin->setAccessToken($this->accessToken);
    }

    // Check if access token is valid by making a test API request
    public function isAccessTokenValid() {
        try {
            // Attempt to fetch profile information as a test
            $profile = $this->linkedin->get('me');
            return true; // If no exception is thrown, the token is valid
        } catch (Exception $e) {
            // Handle any errors returned by LinkedIn
            if ($e->getCode() == 401) {
                return false; // Token is invalid or expired
            }
            throw new Exception('Error validating access token: ' . $e->getMessage());
        }
    }

    // Refresh the access token using the refresh token
    public function refreshAccessToken() {
        $client = new Client();

        $response = $client->post('https://www.linkedin.com/oauth/v2/accessToken', [
            'form_params' => [
                'grant_type' => 'refresh_token',
                'refresh_token' => $this->refreshToken,
                'client_id' => $this->clientId,
                'client_secret' => $this->clientSecret,
            ],
        ]);

        $body = json_decode($response->getBody(), true);

        // If the response contains the new access token, update it
        if (isset($body['access_token'])) {
            $this->accessToken = $body['access_token'];
            $this->linkedin->setAccessToken($this->accessToken); // Update LinkedIn client
            return $this->accessToken;
        } else {
            throw new Exception('Unable to refresh access token: ' . json_encode($body));
        }
    }

    // Post content to LinkedIn
    public function postContent($author, $message, $title = '', $description = '', $submittedUrl = '', $submittedImageUrl = '') {
        if (!$this->isAccessTokenValid()) {
            // Refresh access token if it's not valid
            $this->refreshAccessToken();
        }

        // Proceed to post content after ensuring token validity
        $data = [
            'author' => $author,
            'lifecycleState' => 'PUBLISHED',
            'specificContent' => [
                'com.linkedin.ugc.ShareContent' => [
                    'shareMediaCategory' => 'ARTICLE',
                    'media' => [
                        [
                            'status' => 'READY',
                            'description' => [
                                'text' => $description
                            ],
                            'originalUrl' => $submittedUrl,
                            'title' => [
                                'text' => $title
                            ]
                        ]
                    ],
                    'text' => [
                        'text' => $message
                    ]
                ]
            ],
            'visibility' => [
                'com.linkedin.ugc.MemberNetworkVisibility' => 'PUBLIC'
            ]
        ];

        try {
            $response = $this->linkedin->post('/ugcPosts', $data);
            return $response;
        } catch (Exception $e) {
            echo 'Error: ' . $e->getMessage();
            return false;
        }
    }
}
