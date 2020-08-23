<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Taviraj&display=swap" rel="stylesheet">
    <title>Peaky Blinders API</title>
</head>

<body>

    <header class="c-header">
        <img src="https://www.thesun.co.uk/wp-content/uploads/2017/11/nintchdbpict000229472576.jpg">
        <div class="header-content">

            <h1>PEAKY BLINDERS</h1>
            <p>By order of the Peaky Blinders!</p>

        </div>
    </header>

    <form action="" method="post" class="search">
        <label>Search</label>
        <input type="text" name="search">
        <input type="submit" name="submit">
    </form>

    <?php

    $host = 'localhost';
    $db_name = 'peaky';
    $username = 'root';
    $password = '';
    $conn;

    $conn = new mysqli($host, $username, $password, $db_name);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT id, person_id, firstName, lastName, gender, faction, playedBy, seasons, currentStatus, img FROM peaky.posts";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        echo "<div class='inner'>";
        while ($row = $result->fetch_assoc()) {
            echo
                "<div>"

                    . "<div class='member'>"

                    . "<div class='slike'>"
                    . $row["img"]
                    . "</div>"

                    /* . "<div class='item'>"
                    . "id: " . $row["id"]
                    . "</div>" */

                    . "<div class='item cName'>"
                    . "First Name: " . $row["firstName"]
                    . "</div>"

                    . "<div class='item cName'>"
                    . "Last Name: " . $row["lastName"]
                    . "</div>"

                    . "<div class='item'>"
                    . "Gender: " . $row["gender"]
                    . "</div>"

                    . "<div class='item'>"
                    . "Faction: " . $row["faction"]
                    . "</div>"

                    . "<div class='item'>"
                    . "Played By: " . $row["playedBy"]
                    . "</div>"

                    . "<div class='item'>"
                    . "Seasons: " . $row["seasons"]
                    . "</div>"

                    . "<div class='item'>"
                    . "Status: " . $row["currentStatus"]
                    . "</div>"

                    . "</div>"

                    . "</div>";
        }
        echo "</div>";
    } else {
        echo "0 results";
    }

    ?>







</body>

</html>