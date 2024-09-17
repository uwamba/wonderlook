<?php
use Facebook\Exceptions\FacebookResponseException;
use Facebook\Exceptions\FacebookSDKException;
class InstagramPoster extends FacebookPoster {
    public function postImage($imagePath, $caption) {
        if (!$this->isAccessTokenValid()) {
            $this->extendAccessToken();
        }

        try {
            $response = $this->facebook->post('/me/media', [
                'image_url' => $imagePath,
                'caption' => $caption,
            ], $this->accessToken);

            return $response->getDecodedBody();
        } catch (FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
        } catch (FacebookSDKException $e) {
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
        }
    }
}

?>
