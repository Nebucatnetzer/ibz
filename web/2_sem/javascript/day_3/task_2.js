var value = 1.0;

var titleSize = 10;

function changeOpacity(){
    if (value >= 0.00) {
        value = value - 0.05;
        var over = document.getElementById("over");
        over.style.opacity = value;
        over.style.backgroundColor = "green";
    }
}
