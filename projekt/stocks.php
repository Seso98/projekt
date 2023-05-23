<!DOCTYPE html>
<html>
<head>
    <title>Bitcoin Price and Volume</title>
    <style>
        table {
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <h1>Bitcoin Price and Volume</h1>
    <table>
        <tr>
            <th>Date</th>
            <th>Price</th>
            <th>Volume</th>
        </tr>

        <?php
            $apiKey = "VCG524AB813K60NB";
            $symbol = "BTC";

            $url = "https://www.alphavantage.co/query?function=DIGITAL_CURRENCY_DAILY&symbol={$symbol}&market=USD&apikey={$apiKey}";

            $response = file_get_contents($url);
            $data = json_decode($response, true);

            if (isset($data['Time Series (Digital Currency Daily)'])) {
                $timeSeries = $data['Time Series (Digital Currency Daily)'];

                $count = 0;
                foreach ($timeSeries as $date => $entry) {
                    if ($count >= 14) {
                        break;
                    }

                    $price = $entry['4a. close (USD)'];
                    $volume = $entry['5. volume'];

                    echo "<tr>";
                    echo "<td>{$date}</td>";
                    echo "<td>{$price}</td>";
                    echo "<td>{$volume}</td>";
                    echo "</tr>";

                    $count++;
                }
            }
            else {
                echo "<tr><td colspan='3'>Data not available</td></tr>";
            }
        ?>
    </table>
</body>
</html>
