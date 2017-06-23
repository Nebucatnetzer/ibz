function returnMonth() {
    var monthNames = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November",
                      "December"]
    var currentDate = new Date();
    var m = monthNames[currentDate.getMonth()];
    alert(m);
}
