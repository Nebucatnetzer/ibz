<?php
require_once 'person.php';

function testType($object) {
    if (!($object instanceof Student)) {
        throw new StudentException("Kein Student Object");
    }
    return 'Alles ok!';
}

function createPersons($data) {

    $result = Array();
    $size = count($data);
    foreach ($data as $value) {
        $result[] = new Person($value[0], $value[1], $value[2], $value[3]);
    }

    return $result;
}

$student = new Student('meissner', 'holger', 58, 'brüssel', '12345');
$person = new Person('meissner', 'holger', 58, 'brüssel', '12345');

try {
    $test_student = testType($student);
    $test_person = testType($person);
} catch (Exception $e) {
    echo $e->getMessage();
}
?>