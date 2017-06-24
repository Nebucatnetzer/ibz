var counter = 0;

function addTableRow(){
    var table = document.getElementById("table");
    var tr = document.createElement("tr");

    tr.appendChild(createTD(counter));
    var input = document.getElementById("textEntry");
    tr.appendChild(createTD(input.value));
    table.appendChild(tr);
    counter++;
}

function createTD(text){
    var td = document.createElement("td");
    td.appendChild(document.createTextNode(text));
    return td;
}
