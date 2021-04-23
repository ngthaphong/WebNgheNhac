
window.onload = function () {
    setTimeout("switchImage()", 3000);

}
var current = 1;
var numIMG = 4;
function switchImage() {
    current++;
    document.images['myimage'].src = 'images/banner' + current + '.jpg';
    if (current == numIMG) { current = 0; }
    setTimeout("switchImage()", 3000);

}
