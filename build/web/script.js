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

function emitirRecibo() {
  const compra = {
    cliente: "Ash Ketchum",
    data: new Date().toLocaleString(),
    itens: [
      { nome: "Pokébola", quantidade: 3, preco: 10.00 },
      { nome: "Poção", quantidade: 2, preco: 15.50 }
    ]
  };

  compra.total = compra.itens.reduce((acc, item) => acc + (item.preco * item.quantidade), 0);

  let recibo = `
    <h3>Recibo de Compra</h3>
    <p><strong>Cliente:</strong> ${compra.cliente}</p>
    <p><strong>Data:</strong> ${compra.data}</p>
    <table border="1" cellpadding="5" cellspacing="0">
      <tr><th>Produto</th><th>Qtd</th><th>Preço</th></tr>
  `;

  compra.itens.forEach(item => {
    recibo += `
      <tr>
        <td>${item.nome}</td>
        <td>${item.quantidade}</td>
        <td>R$ ${item.preco.toFixed(2)}</td>
      </tr>
    `;
  });

  recibo += `</table><p><strong>Total:</strong> R$ ${compra.total.toFixed(2)}</p>`;

  document.getElementById("reciboContainer").innerHTML = recibo;
}
