<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Relatório Gerencial</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
    th { background-color: #f2f2f2; }
  </style>
</head>
<body>
  <h2>📊 Relatório Gerencial - Compras do Mês</h2>
  <table>
    <tr>
      <th>Cliente</th>
      <th>Data da Compra</th>
      <th>Itens</th>
      <th>Total (R$)</th>
    </tr>
    <tr>
      <td>Ash Ketchum</td>
      <td>2025-07-10</td>
      <td>3x Pokébola, 2x Poção</td>
      <td>61,00</td>
    </tr>
    <tr>
      <td>Misty</td>
      <td>2025-07-15</td>
      <td>1x Super Poção</td>
      <td>20,00</td>
    </tr>
    <!-- Adicione mais registros dinamicamente no futuro -->
  </table>
</body>
</html>
