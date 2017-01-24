//document.getElementById("respNav").addEventListener("click",nav);
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

document.getElementById("newGrupo").addEventListener("click", addGrupo);
function addGrupo(){
    window.open("crear_grupos.html","",'top=50,left=300,width=600,height=600');
}

document.getElementById("enviarGrupo").addEventListener("click", sendGrupo);
function sendGrupo(){
    window.close();
}