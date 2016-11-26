var createGrid = function(number){
    // Create the Grid with number as grid size (number x number)
    // TODO: Remove previous grid before adding a new grid.
    var s1 = '<div class="row">';
    var s2 = '';
    var wh = 960 / number;
    console.log("wh: " + wh);
    for(var i = 0; i < wh; i++){
        // console.log("i:" + i);
        s1 += '<div class="box"></div>';
    }
    s1 += '</div>';
    for(var j = 0; j < wh; j++){
        // console.log("j:" + j);
        s2 += s1;
    }
    $row = $(s2);
    $('#container').append($row);
    $('.box').width(wh);
    $('.box').height(wh);
    // Drawing
    $('.box').hover(function(){
        $(this).addClass("hover");
    });
}

$(document).ready(function(){
    createGrid(16);
    $('#btn-setup').click(function(){
        var gridSize = prompt("Which size grid do you want?");
        console.log("gridSize: " + gridSize);
        createGrid(gridSize);
    });
});
