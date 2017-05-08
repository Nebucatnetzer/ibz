<?php
require('db.php');

$professor_courses_query = "SELECT p.name,
                                p.firstname,
                                p.id,
                                c.id,
                                c.course_name,
                                c.teacher_id
                        FROM courses c
                        INNER JOIN persons p
                            on c.teacher_id = p.id;";

$courses_query = "SELECT p.name,
                        p.firstname,
                        p.id,
                        c.id,
                        c.course_name,
                        c.teacher_id,
                        cs.student_id,
                        cs.course_id
                FROM courses c
                INNER JOIN persons p on c.teacher_id = p.id
                INNER JOIN courses_students cs on cs.student_id = p.id;";

function query_database($query)
{
    global $con;
    $query_result = mysqli_query($con, $query) or
                  die(mysqli_error($con));
    return $query_result;
}
?>

<h2>aktive Lehrer</h2>

<?php

$query_result = query_database($professor_courses_query);

while ($query_rows = $query_result->fetch_object()) {
    foreach ($query_rows as $key => $value) {
        echo "$key => $value\n<br>";
    }
}


?>

<h2>besetzte Kurse</h2>

<?php

$query_courses = query_database($courses_query);

while ($query_rows = $query_courses->fetch_object()) {
    foreach ($query_rows as $key => $value) {
        echo "$key => $value\n<br>";
    }
}

?>