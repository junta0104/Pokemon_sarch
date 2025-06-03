<%-- pageディレクティブの設定 --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<%-- taglibディレクティブで、使用するタグライブラリを宣言 --%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>得意先変更結果</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
 <link rel="stylesheet" href="css/Style.css">


<style>
  	body {
      background-color: #f5f7fa;
    }

    header {
      background-color: #28a745;
      color: white;
      padding: 1rem 2rem;
      margin-bottom: 1.5rem;
      width: 100%;
    }

    .button-group {
      display: flex;
      flex-wrap: wrap;
      gap: 0.5rem;
    }

    .button-group .btn {
      font-size: 0.875rem;
    }

    .header-title {
      font-size: 1.25rem;
      font-weight: bold;
      margin: 0;
    }
    .update-form {
      max-width: 800px;
      margin: 40px auto; /* ページ中央に配置、上下の余白を確保 */
      padding: 20px;
      background-color: white;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      border-radius: 8px;
    }
    .update-form h2 {
      font-size: 28px;
      margin-bottom: 30px;
      text-align: center;
    }
    .update-form .form-group {
      margin-bottom: 20px;
    }
    .update-form label {
      display: block;
      font-size: 18px;
      margin-bottom: 8px;
      color: #333;
    }
    .update-form input[type="text"] {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .update-form .button-section {
      text-align: center;
      margin-top: 30px;
    }
    .update-form .button-section button {
      padding: 15px 40px;
      font-size: 18px;
    }
    .back-button {
      text-align: right;
      margin-bottom: 20px;
      padding-right: 20px;
    }
    .back-button button {
      padding: 15px 40px;
      font-size: 18px;
    }
  </style>

</head>
<body>


<div style="text-align:center">
<h2>以下の内容で変更が完了しました。</h2>
<form action="/jsys/jsysFC" method="post">
<div style="text-align: right;">
    <button type="submit" name="buttonId" value="V002_01">メイン画面へ戻る</button>
  </div>
</form>
<div class="w-75 p-3" style="margin: auto;">
<table class="table table-bordered " >
<!-- <table border="1" style="margin: auto;" > -->
  <tr>
   <th>得意先コード</th>
	<td><c:out value="${requestScope.custCode}"></c:out></td>
  </tr>
  
  <tr>
   <th>得意先名</th>
   <td><c:out value="${requestScope.custName}"></c:out></td>
  </tr>
  <tr>
   <th>電話番号</th>
   <td><c:out value="${requestScope.telNo}"></c:out></td>
  </tr>
  <tr>
   <th>郵便番号</th>
   <td><c:out value="${requestScope.postalCode }"></c:out></td>
  </tr>
  <tr>
   <th>住所</th>
   <td><c:out value="${requestScope.address}"></c:out></td>
  </tr>
  <tr>
   <th>割引率</th>
   <td><c:out value="${requestScope.discountRate}"></c:out>%</td>
  </tr>
  </table>
  </div>
<!--   </table> -->
<form action="/jsys/jsysFC" method="post">
<button type="submit" name="buttonId" value="V204_01">続けて変更を行う</button>

</div>
</form>


</body>

</html>
<%@ include file="footer.jsp" %>