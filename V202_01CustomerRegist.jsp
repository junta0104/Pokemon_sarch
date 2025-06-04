<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="header_select.jsp" %>
<meta charset="UTF-8">
<title>得意先登録</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">

<style>
  body {
      background-color: #f5f7fa;
      font-family: Arial, sans-serif;
    }

    header {
      background-color: #28a745;
      color: white;
      padding: 1rem 2rem;
      margin-bottom: 1.5rem;
      width: 100%;
    }

  .form-container {
    max-width: 800px;
    margin: 40px auto;
    padding: 20px;
    background-color: #ffffff;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
  }

  table th, table td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  table td input {
    width: 90%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
    box-sizing: border-box;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
  }

  table td input:focus {
    border-color: #4CAF50;
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
  }

  .form-button {
    text-align: center;
    margin-top: 30px;
  }

  .form-button button {
    padding: 15px 40px;
    font-size: 18px;
    color: white;
    background-color: #4CAF50;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .form-button button:hover {
    background-color: #45a049;
  }

  .back-button {
    text-align: right;
    margin-bottom: 20px;
  }

  .back-button button {
    padding: 15px 40px;
    font-size: 18px;
    color: white;
    background-color: #4CAF50;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .back-button button:hover {
    background-color: #45a049;
  }

  .error-message {
    text-align: center;
    color: red;
    font-weight: bold;
    margin-top: 20px;
  }
</style>
</head>
<body>
  <div style="text-align: center;">
    <h2 style="color: #4CAF50;">得意先登録</h2>
  </div>

  <!-- メイン画面に戻るボタン -->
  <form action="/jsys/jsysFC" method="post">
    <div class="back-button">
      <button type="submit" name="buttonId" value="V002_01">メイン画面へ戻る</button>
    </div>
  </form>

  <!-- 登録フォーム -->
  <div class="form-container">
    <form action="/jsys/jsysFC" method="post">
      <table>
        <tr>
          <th>得意先名</th>
          <td><input type="text" name="custName" value="${param.custName}" title="得意先名を入力してください"></td>
        </tr>
        <tr>
          <th>電話番号</th>
          <td><input type="text" name="telNo" value="${param.telNo}" title="電話番号を入力してください"></td>
        </tr>
        <tr>
          <th>郵便番号</th>
          <td><input type="text" name="postalCode" value="${param.postalCode}" title="郵便番号を入力してください"></td>
        </tr>
        <tr>
          <th>住所</th>
          <td><input type="text" name="address" value="${param.address}" title="住所を入力してください"></td>
        </tr>
        <tr>
          <th>割引率</th>
          <td><input type="text" name="discountRate" value="${param.discountRate}" title="割引率（％）を入力してください"></td>
        </tr>
      </table>

      <div class="form-button">
        <button type="submit" name="buttonId" value="V202_02_01">登録</button>
      </div>
    </form>
  </div>

  <!-- エラーメッセージ -->
  <div class="error-message">
    <c:out value="${requestScope.errorMessage}" />
  </div>
</body>
</html>
<div style="text-align: center;">
<%@ include file="footer.jsp" %>
</div>
