<html lang="en">
<head>
    <title>Hello world page</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<h1>Результат работы метода CREATE</h1>
    <?php
    echo '<table>';
    echo '<tr><th>ID</th><th>Имя</th><th>Фамилия</th><th>Класс</th><th>Номер телефона</th></tr>';
    $conn = mysqli_connect("db", "user", "password", "appDB");
    mysqli_query($conn, "INSERT INTO students (name, surname, class, phone_num) VALUES ('Maxim', 'Lavrov', 2, '88005553535')");
    $result = mysqli_query($conn, "SELECT * FROM students");
    while ($row = mysqli_fetch_array($result)) {
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
