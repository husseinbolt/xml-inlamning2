function setClock() {
    var now = new Date();
    var sec = now.getSeconds();
    var minutes = now.getMinutes();
    var h = now.getHours();
    document.getElementById("sekunder").setAttribute("transform", "rotate(" + sec*6 +" 0 0)");
    document.getElementById("minuter").setAttribute("transform", "rotate(" + minutes*6 +" 0 0)");
    document.getElementById("timmar").setAttribute("transform", "rotate(" + (h*30 + (minutes/60)*30) +" 0 0)");   
}
// function setClock() {
  //  var now = new Date();
    //var sec = now.getMinutes();
    //document.getElementById("minuter").setAttribute("transform", "rotate(" + sec*60 +" 0 0)");
    
//}

setInterval(setClock, 1000);

