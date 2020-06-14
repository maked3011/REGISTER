<?php
    require_once("connection.php");
    $result = mysqli_query($con, "SELECT * FROM students ORDER BY lastName");
    $row = mysqli_fetch_array($result);

    printf("
            <table id='studentsTables' cellspacing=''>
                <caption>Список студентів</caption>
                <tr><th id='studentsTittleTH'>ПІБ</th><th id='studentsTittleTH'>Факультет</th><th id='studentsTittleTH'>Гуртожиток</th><th id='studentsTittleTH'>Кімната</th></tr>
    ");
    do
    {
        printf("
                <tr><th id='studentsTH'>" .$row[lastName]. " " .$row[firstName]. "</th><th id='studentsTH'>" .$row[faculty]. "</th><th id='studentsTH'>" .$row[dormitory]. "</th><th id='studentsTH'>" .$row[room]. "</th></tr>
        ");
    }
    while($row = mysqli_fetch_array($result));
    printf("</table>")
?>