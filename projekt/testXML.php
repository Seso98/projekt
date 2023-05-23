<!DOCTYPE html>
<html>
<body>

<h1>NBP Data</h1>

<?php
$url = 'http://api.nbp.pl/api/exchangerates/tables/a/?format=xml'; // NBP API endpoint for table A in XML format
$xml = file_get_contents($url);

if ($xml !== false) {
    $data = simplexml_load_string($xml);
    if ($data !== false && isset($data->ExchangeRatesTable->Rates->Rate)) {
        echo '<table>';
        echo '<tr><th>Currency</th><th>Code</th><th>Rate</th></tr>';

        foreach ($data->ExchangeRatesTable->Rates->Rate as $rate) {
            echo '<tr>';
            echo '<td>' . $rate->Currency . '</td>';
            echo '<td>' . $rate->Code . '</td>';
            echo '<td>' . $rate->Mid . '</td>';
            echo '</tr>';
        }

        echo '</table>';
    } else {
        echo 'Failed to parse XML data or no rate information found.';
    }
} else {
    echo 'Failed to fetch data from the NBP API.';
}
?>

</body>
</html>
