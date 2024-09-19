<?php
//use Noweh\TwitterApi\Client;


//$settings['account_id']="29297701";
//$settings['access_token']="1832316580367101952-086JOIsC68S6URwbag3AD8C21SbSKi";
//$settings['access_token_secret']="DWM3sRwDw83Q8BbjG0gPTOSYctnJ5ptUs3kf2zYMYupRK";
//$settings['consumer_key']="RDUIMYQv1GAaV4jkEgeC5Pily";
//$settings['consumer_secret']="Y9L4EqTPXmrIDjNA9n1xpB07cNUkCH7h0SwIjhEryXsadkNc0s";
//$settings['bearer_token']="AAAAAAAAAAAAAAAAAAAAACUMvwEAAAAAKE49HQ5L2k%2F9XOWntud2FAXuftQ%3DaMGCIPou1QDBMpkGmeUy9vm0s9CtKpNFeS7eIWQy55XfYYyAcH";
//$settings['free_mode'] = true;

/*
    TwitterOAuth API via Composer
    https://twitteroauth.com/
*/
include('../vendor/autoload.php');

/* define the classes */
use Abraham\TwitterOAuth\TwitterOAuth;

function postTweetUpdate($str = '', $mediaArray = null) {

    /*
        Twitter OAuth keys
        Create your App and find your API keys here:
        https://developer.twitter.com/en/apps
    */
    $consumer_key = 'RDUIMYQv1GAaV4jkEgeC5Pily';
    $consumer_secret = 'Y9L4EqTPXmrIDjNA9n1xpB07cNUkCH7h0SwIjhEryXsadkNc0s';
    $access_token = '1832316580367101952-086JOIsC68S6URwbag3AD8C21SbSKi';
    $access_token_secret = 'DWM3sRwDw83Q8BbjG0gPTOSYctnJ5ptUs3kf2zYMYupRK';
    
    /* init API */
    $connection = new TwitterOAuth($consumer_key, $consumer_secret, $access_token, $access_token_secret);
    
    if(is_array($mediaArray)) {
        
        $mediaIDS = array();
        
        /*
            Up to 4 media objects can be uploaded.
            https://developer.twitter.com/en/docs/media/upload-media/overview
        */
        
        foreach($mediaArray AS $key => $media_path) {
            
            /* Upload media to twitter API and get media ID back */
            $mediaOBJ = $connection->upload('media/upload', ['media' => $media_path]);
            
            /* push uploaded media ID to array */
            array_push($mediaIDS, $mediaOBJ->media_id_string);
        }
        
        /* create comma delimited list of media ID:s */
        $mediaIDstr = implode(',', $mediaIDS);
    }
        
    /* API params */
    $arrayCfg['status'] = $str;
    $arrayCfg['media_ids'] = $mediaIDstr;
    
    /*
        Make POST request to Twitter API
        https://developer.twitter.com/en/docs/tweets/post-and-engage/api-reference/post-statuses-update
    */
    $statuses = $connection->post("statuses/update", $arrayCfg);
    
    /* return payload */
    return $statuses;
}

?>
<?PHP
    /* string to Post */
    $str = 'Have Good Day' . PHP_EOL;
    $str .= '#Wonderlook' . PHP_EOL;
    $str .= 'http://www.wonderlook.com' . PHP_EOL;
    $str .= '' . hash('sha1', mt_rand(0, 1000000));
    
    /* media to upload */
    $mediaToUpload[] = 'post_img/post2.jpeg';

    /* make request to Twitter API */
    $payLoad = postTweetUpdate($str, $mediaToUpload);
?>

<h3>Debug</h3>
<pre><?PHP print_r($payLoad); ?></pre>
