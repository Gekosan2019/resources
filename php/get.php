<html lang="en">
<head>
    <title>Hello world page</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<h1>Результат работы метода GET</h1>
    <?php
    echo '<table>';
    echo '<tr><th>ID</th><th>Имя</th><th>Фамилия</th><th>Класс</th><th>Номер телефона</th></tr>';
    $conn = mysqli_connect("db", "user", "password", "appDB");
    $result = mysqli_query($conn, "SELECT * FROM students");
    while($row = mysqli_fetch_array($result)) {
        echo '<tr>';
        echo '<td>' . $row['ID'] . '</td>';
        echo '<td>' . $row['name'] . '</td>';
        echo '<td>' . $row['surname'] . '</td>';
        echo '<td>' . $row['class'] . '</td>';
        echo '<td>' . $row['phone_num'] . '</td>';
        echo '</tr>';
    }
    mysqli_close($conn);
    ?>
</body>
</html>
