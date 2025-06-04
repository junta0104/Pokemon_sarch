<%-- pageディレクティブの設定 --%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%-- taglibディレクティブで、使用するタグライブラリを宣言 --%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="headerRegist.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得意先登録結果</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/css/Style.css">
<style>
  
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
<h2>得意先登録</h2>

</div>
<div style="text-align:right">
<form action="/jsys/jsysFC" method="post">
<button type="submit" name="buttonId" value="V200_01_01">メニュー画面に戻る</button>
<br>
</div>
</form>

<form action="/jsys/jsysFC" method="post">
<div style="text-align:center">
<div class="w-75 p-3" style="margin: 0 auto;">
<table border="0" style="margin: auto;">
<tr>
<td>得意先名</td>  
<td><input type ="text" name="custName" value="<c:out value="${param.custName}"/>"></td>
</tr>
<tr>
<td>電話番号</td> 
<td><input type ="text" name="telNo" value="<c:out value="${param.telNo}"/>"></td>
</tr>
<tr>
<td>郵便番号</td> 
<td><input type ="text" name="postalCode" value="<c:out value="${param.postalCode}"/>"></td>
</tr>
<tr>
<td>住所</td> 
<td><input type ="text" name="address" value="<c:out value="${param.address}"/>"></td>
</tr>
<tr>
<td>割引率</td> 
<td><input type ="number" name="discountRate" value="<c:out value="${param.discountRate}"/>"></td>
</tr>
</table>
<br>
<button type="submit" name="buttonId" value="V202_02_01">登録</button></td>
<div style="text-align:center; color:red; font-weight:bold;">
<%-- エラーメッセージがある場合、出力 --%>
<c:forEach var="message" items="${requestScope.errorMessageList}">

<p><c:out value="${message}" /></p>

</c:forEach>

</div>
</form>
<br>
<br>
<br>
<br>
<br>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>