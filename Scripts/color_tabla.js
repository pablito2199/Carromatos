function colorequipos() {
    document.getElementById("ferrari1").addEventListener("mouseover", colorFerrari, false);
    document.getElementById("ferrari1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("ferrari2").addEventListener("mouseover", colorFerrari, false);
    document.getElementById("ferrari2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("mercedes1").addEventListener("mouseover", colorMercedes, false);
    document.getElementById("mercedes1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("mercedes2").addEventListener("mouseover", colorMercedes, false);
    document.getElementById("mercedes2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("redbull1").addEventListener("mouseover", colorRedBull, false);
    document.getElementById("redbull1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("redbull2").addEventListener("mouseover", colorRedBull, false);
    document.getElementById("redbull2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("mclaren1").addEventListener("mouseover", colorMclaren, false);
    document.getElementById("mclaren1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("mclaren2").addEventListener("mouseover", colorMclaren, false);
    document.getElementById("mclaren2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("rp1").addEventListener("mouseover", colorRP, false);
    document.getElementById("rp1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("rp2").addEventListener("mouseover", colorRP, false);
    document.getElementById("rp2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("renault1").addEventListener("mouseover", colorRenault, false);
    document.getElementById("renault1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("renault2").addEventListener("mouseover", colorRenault, false);
    document.getElementById("renault2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("tauri1").addEventListener("mouseover", colorTauri, false);
    document.getElementById("tauri1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("tauri2").addEventListener("mouseover", colorTauri, false);
    document.getElementById("tauri2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("alpha1").addEventListener("mouseover", colorAlpha, false);
    document.getElementById("alpha1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("alpha2").addEventListener("mouseover", colorAlpha, false);
    document.getElementById("alpha2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("haas1").addEventListener("mouseover", colorHaas, false);
    document.getElementById("haas1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("haas2").addEventListener("mouseover", colorHaas, false);
    document.getElementById("haas2").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("williams1").addEventListener("mouseover", colorWilliams, false);
    document.getElementById("williams1").addEventListener("mouseout", colorAntiguo, false);
    document.getElementById("williams2").addEventListener("mouseover", colorWilliams, false);
    document.getElementById("williams2").addEventListener("mouseout", colorAntiguo, false);
}

function colorFerrari() {
    document.getElementById("ferrari1").style.color = "red";
    document.getElementById("ferrari2").style.color = "red";
}

function colorMercedes() {
    document.getElementById("mercedes1").style.color = "cyan";
    document.getElementById("mercedes2").style.color = "cyan";
}

function colorRedBull() {
    document.getElementById("redbull1").style.color = "#2A2789";
    document.getElementById("redbull2").style.color = "#2A2789";
}

function colorMclaren() {
    document.getElementById("mclaren1").style.color = "orange";
    document.getElementById("mclaren2").style.color = "orange";
}

function colorRP() {
    document.getElementById("rp1").style.color = "pink";
    document.getElementById("rp2").style.color = "pink";
}

function colorRenault() {
    document.getElementById("renault1").style.color = "yellow";
    document.getElementById("renault2").style.color = "yellow";
}

function colorTauri() {
    document.getElementById("tauri1").style.color = "blue";
    document.getElementById("tauri2").style.color = "blue";
}

function colorAlpha() {
    document.getElementById("alpha1").style.color = "darkred";
    document.getElementById("alpha2").style.color = "darkred";
}

function colorHaas() {
    document.getElementById("haas1").style.color = "lightgrey";
    document.getElementById("haas2").style.color = "lightgrey";
}

function colorWilliams() {
    document.getElementById("williams1").style.color = "white";
    document.getElementById("williams2").style.color = "white";
}

function colorAntiguo() {
    document.getElementById("ferrari1").style.color = "#707070";
    document.getElementById("ferrari2").style.color = "#707070";
    document.getElementById("mercedes1").style.color = "#707070";
    document.getElementById("mercedes2").style.color = "#707070";
    document.getElementById("redbull1").style.color = "#707070";
    document.getElementById("redbull2").style.color = "#707070";
    document.getElementById("mclaren1").style.color = "#707070";
    document.getElementById("mclaren2").style.color = "#707070";
    document.getElementById("rp1").style.color = "#707070";
    document.getElementById("rp2").style.color = "#707070";
    document.getElementById("renault1").style.color = "#707070";
    document.getElementById("renault2").style.color = "#707070";
    document.getElementById("alpha1").style.color = "#707070";
    document.getElementById("alpha2").style.color = "#707070";
    document.getElementById("tauri1").style.color = "#707070";
    document.getElementById("tauri2").style.color = "#707070";
    document.getElementById("haas1").style.color = "#707070";
    document.getElementById("haas2").style.color = "#707070";
    document.getElementById("williams1").style.color = "#707070";
    document.getElementById("williams2").style.color = "#707070";
}

window.onload = colorequipos;