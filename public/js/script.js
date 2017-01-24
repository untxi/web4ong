document.getElementById("btnVerGrupo").addEventListener("click", verGrupo);
function verGrupo(){
    window.open("equipo.html","",'top=50,left=300,width=600,height=600');
}

function nav() {
    var x = document.getElementById("myTopnav");
    if (x.className === "col-12 topnav") {
        x.className += " responsive";
      document.getElementById("myTopNav").style.background="var(--bg-light)";
        document.getElementById("activo").style.background="var(--bg-dark)";
        document.getElementById("blockAbout").style.marginTop="50%";
    } else {
        x.className = "col-12 topnav";
        document.getElementById("myTopNav").style.background="var(--bg-dark)";
        document.getElementById("activo").style.background="var(--bg-light)";
        document.getElementById("blockAbout").style.marginTop="30%";
    }
 }