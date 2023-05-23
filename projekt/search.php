<?php
// Set your Flickr API credentials
$api_key = '34209fdf17a4aa49fe0e622c7f9e5469';

if (isset($_POST['search'])) {
    // Get the search term from the form
    $search_term = $_POST['search'];
    
    // Prepare the API request URL
    $url = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=' . $api_key . '&text=' . urlencode($search_term) . '&per_page=4&format=json&nojsoncallback=1';
    
    // Send the API request and get the response
    $response = file_get_contents($url);
    
    // Parse the JSON response
    $result = json_decode($response, true);
    
    // Check if the API request was successful
    if ($result['stat'] == 'ok') {
        $photos = $result['photos']['photo'];
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Image Search</title>
</head>
<body>
    <h1>Image Search</h1>
    
    <form method="POST">
        <input type="text" name="search" placeholder="Enter search term" required>
        <button type="submit">Search</button>
    </form>
    
    <?php if (isset($photos)) { ?>
        <div>
            <?php foreach ($photos as $photo) { ?>
                <?php
                    // Prepare the image URL using the photo details
                    $image_url = 'https://farm' . $photo['farm'] . '.staticflickr.com/' . $photo['server'] . '/' . $photo['id'] . '_' . $photo['secret'] . '.jpg';
                ?>
                <img src="<?php echo $image_url; ?>" alt="<?php echo $photo['title']; ?>" width="200">
            <?php } ?>
        </div>
    <?php } ?>
</body>
</html>
