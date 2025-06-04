<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得意先変更確認画面</title>
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
  </style>
</head>

<body>
<form action="/jsys/jsysFC" method="post">

<div style="text-align:center">
<h2>以下の得意先を変更しますか？</h2>
</div>
<div style="text-align: right;">
<button type="submit" name="buttonId" value="V200_01">メニュー画面へ戻る</button>
</div>


<div style="text-align:center">
    
<table border="1" style="margin: auto;" width="750" height="300">
  <tr>
   <td>得意先名</td>
	<td><c:out value="${param.custName}" ></c:out></td>
	
  </tr>

   <td>電話番号</td>
   <td><c:out value="${param.telNo}"></c:out></td>
  </tr>
  <tr>
   <td>郵便番号</td>
   <td><c:out value="${param.postalCode}"></c:out></td>
  </tr>
  <tr>
   <td>住所</td>
   <td><c:out value="${param.address}"></c:out></td>
  </tr>
  <tr>
   <td>割引率</td>
   <td><c:out value="${param.discountRate}"></c:out></td>
  </tr>
  
  </table>
  <input type="hidden" name="custCode" value="${param.custCode}">
 <input type="hidden" name="custName" value="${param.custName}">
 <input type="hidden" name="telNo" value="${param.telNo}">
 <input type="hidden" name="postalCode" value="${param.postalCode}">
 <input type="hidden" name="address" value="${param.address}">
 <input type="hidden" name="discountRate" value="${param.discountRate}">
       <button type="submit" name="buttonId" value="V204_05">変更する</button>
     	<button type="submit" name="buttonId" value="V204_01">変更しない</button>

     <div style="text-align:center; color:red; font-weight:bold;">
     <c:out value="${requestScope.errorMessage}" />
     </div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>