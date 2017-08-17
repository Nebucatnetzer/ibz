function loopTen(){
    for(var i = 1; i < 11; i++) {
        paragraph = createParagraph("Textabsatz", i);
        var element = document.getElementById("par1");
        element.appendChild(paragraph);
    }
}

function createParagraph(input, amount) {
    id = "par" + amount;
    text = input + amount;
    var node = document.createTextNode(text);
    var paragraph = document.createElement("p");
    paragraph.id = id;
    paragraph.appendChild(node);
    return paragraph;
}
