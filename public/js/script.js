//document.getElementById("respNav").addEventListener("click",nav);
function nav() {
    var x = document.getElementById("myTopnav");
    if (x.className === "col-12 topnav") {
        x.className += " responsive";
      document.getElementById("myTopNav").style.background="var(--bg-light)";
        document.getElementById("activo").style.background="var(--bg-dark)";
    } else {
        x.className = "col-12 topnav";
        document.getElementById("myTopNav").style.background="var(--bg-dark)";
        document.getElementById("activo").style.background="var(--bg-light)";
    }
 }