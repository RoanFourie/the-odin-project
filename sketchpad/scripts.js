var clicked = false;
var blueColor = true
var rainbowColor = false;
var blackGradient = false;

$(document).ready(function(){
    if(!clicked){
        createGrid(16);
        console.log("Create grid 16x16 default..");
    }
    $('.box').hover(changeColor);
    $('#btn-setup').on("click", function(){
        clicked = true;
        var gridSize = prompt("Which size grid do you want?");
        console.log("gridSize: " + gridSize);
        createGrid(gridSize);
        $('.box').hover(changeColor);
    });
    $('#btn-black').on("click", function(){
        blueColor = false;
        blackGradient = true;
        rainbowColor = false;
    });
    $('#btn-rainbow').on("click", function(){
        blueColor = false;
        blackGradient = false;
        rainbowColor = true;
    });
    $('#btn-blue').on("click", function(){
        blueColor = true;
        blackGradient = false;
        rainbowColor = false;
    });
});

var createGrid = function(number){
    // Create the Grid with number as grid size (number x number)
    var s1 = '<div class="row">';
    var s2 = '';
    var wh = 960 / number;
    $("div").remove("#grid");
    $('#container').append('<div id="grid"></div>');
    console.log("wh: " + wh + " number: " + number);
    for(var i = 0; i < number; i++){
        // console.log("i:" + i);
        s1 += '<div class="box"></div>';
    }
    console.log("box per row: " + i);
    s1 += '</div>';
    for(var j = 0; j < number; j++){
        // console.log("j:" + j);
        s2 += s1;
    }
    console.log("rows: " + j);
    $row = $(s2);
    $('#grid').append($row);
    $('.box').width(wh);
    $('.box').height(wh);
}

var changeColor = function(){
    // Change the fill color of the box when you hover over it
    var opacity = 0;
    $(this).addClass("hover");
    if (rainbowColor){
        $(this).css("background-color", randomColor());
        $(this).css("opacity", "0.99"); //To remove the opacity attribute
    }else if (blackGradient){
        $(this).css("background-color", "#000");
        console.log("black opacity: " + $(this).css("opacity"));
        opacity = +$(this).css("opacity");
        console.log("got opacity: " + opacity);
        if (opacity < 0.99){
            opacity += 0.1;
            console.log("added" + opacity + "to opacity");
        }else if (opacity < 0.1) {
            opacity = 0.1;
            console.log("opacity set to " + opacity);
        }else if (opacity === 0.99) {
            opacity = 0.1;
            console.log("opacity, firsttime set " + opacity);
        }else{
            console.log("Do nothing");
        }
        $(this).css("opacity", opacity.toString());
    }else{
        $(this).css("background-color", "blue");
        $(this).css("opacity", "0.99"); //To remove the opacity attribute
    }
}

var randomColor = function(){
    // Creates a randomized color in RGB
    var red = Math.floor(Math.random() * (255 - 0 + 1)) + 0;
    var green = Math.floor(Math.random() * (255 - 0 + 1)) + 0;
    var blue = Math.floor(Math.random() * (255 - 0 + 1)) + 0;
    var result = "";
    result = "rgb(" + red.toString() + ", " + green.toString() + ", " + blue.toString() + ")";
    return result;
}
