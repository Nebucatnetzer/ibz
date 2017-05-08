<?php

class Person {

    protected $name;
    protected $vorname;
    protected $alter;
    protected $wohnort;

    public function getName() {
        return $this->name;
    }

    public function getVorname() {
        return $this->vorname;
    }

    public function getAlter() {
        return $this->alter;
    }

    public function getWohnort() {
        return $this->wohnort;
    }

    public function __construct($name, $vorname, $alter, $wohnort) {

        $this->name = $name;
        $this->vorname = $vorname;
        $this->alter = $alter;
        $this->wohnort = $wohnort;
    }
}

class Student extends Person {

    protected $matrikel;

    public function __construct($name, $vorname, $alter, $wohnort, $matrikel) {
        parent::__construct($name, $vorname, $alter, $wohnort);
        $this->matrikel = $matrikel;
    }

    public function __toString() {
        return $this->name . ", "
                           . $this->vorname
                           . " (" . $this->matrikel . ")";
    }
}

class StudentException extends Exception {
    public function __construct($message) {
        parent::__construct($message);
    }
}


?>