<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Excluir Compra</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    form { max-width: 400px; }
    label { display: block; margin-top: 15px; }
    input[type="text"],
    input[type="date"] {
      width: 100%; padding: 8px; margin-top: 5px; box-sizing: border-box;
    }
    input[type="submit"] {
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #e53935;
      color: white;
      border: none;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #c62828;
    }
  </style>
</head>
<body>
  <h2>🗑️ Excluir Compra</h2>
  <form action="ExcluirCompraServlet" method="post">
    <label for="cliente">Nome do Cliente:</label>
    <input type="text" id="cliente" name="cliente" required>

    <label for="data">Data da Compra:</label>
    <input type="date" id="data" name="data" required>

    <input type="submit" value="Excluir Compra">
  </form>
</body>
</html>
