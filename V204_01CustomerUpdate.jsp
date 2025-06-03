<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>


<head>
    <meta charset="UTF-8">
    <title>得意先変更システム</title>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Style.css"> --%>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <!-- カスタムCSS -->
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
  </style>
</head>

<body>
<div style="text-align: center">
    <h2>得意先変更</h2>
</div>

<form action="/jsys/jsysFC" method="post">
  <div style="text-align: right;">
    <button type="submit" name="buttonId" value="V002_01">メイン画面へ戻る</button>
  </div>

  <div style="text-align: center;">
    <div class="form-container">
      
      <div class="form-row">
        <label class="form-label">得意先コード</label>
        <div class="input-with-button">
          <input class="form-input" type="text" name="custCode" value="${requestScope.custCode}" title="得意先コードを入力してください" />
          <button type="submit" name="buttonId" value="V204_03">検索</button>
        </div>
      </div>

     
      <div class="form-row">
        <label class="form-label">得意先名</label>
        <input class="form-input" type="text" name="custName" value="${requestScope.custName}" title="得意先名を入力してください" />
      </div>

      <div class="form-row">
        <label class="form-label">電話番号</label>
        <input class="form-input" type="text" name="telNo" value="${requestScope.telNo}" title="電話番号を入力してください" />
      </div>

      <div class="form-row">
        <label class="form-label">郵便番号</label>
        <input class="form-input" type="text" name="postalCode" value="${requestScope.postalCode}" title="郵便番号を入力してください" />
      </div>

      <div class="form-row">
        <label class="form-label">住所</label>
        <input class="form-input" type="text" name="address" value="${requestScope.address}" title="住所を入力してください" />
      </div>

      <div class="form-row">
        <label class="form-label">割引率</label>
        <input class="form-input" type="text" name="discountRate" value="${requestScope.discountRate}" title="割引率（％）を入力してください" />
      </div>

      <div class="form-button">
        <button type="submit" name="buttonId" value="V204_04">変更</button>
      </div>
    </div>
  </div>
</form>

<div style="text-align: center; color:red; font-weight: bold;">
    <%-- エラーメッセージがある場合に出力 --%>
    <c:out value="${requestScope.errorMessage}" />
</div>

</body>
</html>

<%@ include file="footer.jsp" %>