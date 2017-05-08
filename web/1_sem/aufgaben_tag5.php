<?php
class Person {
    // attributes
    protected $name;
    protected $firstname;
    protected $age;
    protected $domicile;

    // methodes
    public function __construct($name, $firstname, $age, $domicile () {
        $this->name = $name;
        $this->firstname= $firstname;
        $this->age= $age;
        $this->domicile= $domicile;
    }
    public function getName() {
        return $this->name;
    }
    public function setName() {
        $this->name = $name;
    }
    public function getFirstname() {
        return $this->firstname
    }
    public function setFirstname() {
        $this->firstname= $firstname;
    }
    public function getAge() {
        return $this->age
    }
    public function setAge() {
        $this->age= $age;
    }
    public function getDomicile() {
        return $this->domicile
    }
    public function setDomicile() {
        $this->domicile= $domicile;
    }
}
?>
