﻿
 var message="TRANG QUẢN TRỊ HỆ THỐNG"//Chữ cần tạo hiệu ứng
 var neonbasecolor = "#FFA500"//Mầu chữ ban đầu
 var neontextsize = "40"
 var neontextcolor = "#008000"//Hiệu ứng mầu 1
 var neontextcolor2 = "#DC143C"//Hiệu ứng mầu 2
var flashspeed=100 //Tốc độ của hiệu ứng
var flashingletters=3 // Số chữ thay đổi màu của lần 1
var flashingletters2=1 // Số chữ thay đổi màu của lần 2
var flashpause=0 // the pause between flash-cycles in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
    document.write('<font color="'+neonbasecolor+'">')
    for (m=0;m<message.length;m++)
        document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
    document.write('</font>')
}
else
    document.write(message)

function crossref(number){
    var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
    return crossobj
}

function neon(){

    //Change all letters to base color
    if (n==0){
        for (m=0;m<message.length;m++)
            crossref(m).style.color=neonbasecolor
    }

    //cycle through and change individual letters to neon color
    crossref(n).style.color=neontextcolor

    if (n>flashingletters-1) crossref(n-flashingletters).style.color=neontextcolor2 
    if (n>(flashingletters+flashingletters2)-1) crossref(n-flashingletters-flashingletters2).style.color=neonbasecolor


    if (n<message.length-1)
        n++
    else{
        n=0
        clearInterval(flashing)
        setTimeout("beginneon()",flashpause)
        return
    }
}
function beginneon(){
    if (document.all||document.getElementById)
        flashing=setInterval("neon()",flashspeed)
}
beginneon()
