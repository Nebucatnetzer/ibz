function greetUser() {

    var currentTime = new Date();
    var t = currentTime.getHours();

    if (t >= 6) {
        greeting = "Gute Nacht!";
    } else if (t < 6 && t > 10) {
        greeting = "Guten Morgen!"
    } else if (t < 10 && t > 17) {
        greeting = "Guten Tag"
    } else {
        greeting = "Guten Abend!"
    }
    alert(greeting);
}
