/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validarCampoTextoObrigatorio(id) {
    var caixaTexto = document.getElementById(id);
    if (caixaTexto == null) {
        alert("O elemento HTML de id '" + id + "' não existe");
        return false;
    }
    if (caixaTexto.value == null || caixaTexto.value.length == 0 || (/^\s+$/.test(caixaTexto.value))) {
        alert("O elemento HTML de id '" + id + "' não possui algo válido");
        return false;
    }
    return true;
}

function validarCamposRadio(name) {
    var camposRadio = document.getElementsByName(name);
    if (camposRadio == null || camposRadio.length == 0) {
        alert("As cores não existem");
        return false;
    }
    var selecionado = false;
    var cor;
    for (var i = 0; i < camposRadio.length; i++) {
        if (camposRadio[i].checked) {
            selecionado = true;
            cor = camposRadio[i].value;
            break;
        }
    }
    if (selecionado) {
        alert("A cor selecionada foi: " + cor);
    } else {
        alert("Nenhuma cor selecionada");
    }
    return selecionado;
}