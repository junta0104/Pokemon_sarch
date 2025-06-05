<%-- pageディレクティブの設定 --%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp"%>

<%-- taglibディレクティブで、使用するタグライブラリを宣言 --%>
<%-- <%@ taglib uri="jakarta.tags.core" prefix="c" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得意先集計管理メニュー選択</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">

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

  .menu-tile {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* 通常時のシャドウ */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* ホバー時の変化をスムーズに */
    cursor: pointer;
  }

  .menu-tile:hover {
    transform: scale(1.05); /* サイズの変化 */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* ホバー時のシャドウ */
    background-color: #f9f9f9; /* 背景色を薄い色に変更 */
  }

  .menu-icon {
    font-size: 50px;
    margin-bottom: 15px;
  }

  .menu-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
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
<div style="text-align:center">
  <h2 style="color: #4CAF50;">得意先別集計管理</h2>

<form action="/jsys/jsysFC" method="post">

<div class="row row-cols-1 row-cols-md-3 g-4">
  <!-- 月別受注集計 -->  
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V300_01_02">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-calendar3 menu-icon text-primary"></i>
        <h5 class="mt-2">月別受注集計</h5>
      </button>
    </form>
  </div>

  <!-- 年次受注集計 -->
<div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V300_01_03">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-bar-chart menu-icon text-success"></i>
        <h5 class="mt-2">年次受注集計</h5>
      </button>
    </form>
  </div>
 
  <!-- 商品別受注集計 -->  
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V303_01">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-box-seam menu-icon text-warning"></i>
        <h5 class="mt-2">商品別受注集計</h5>
      </button>
    </form>
  </div>
  
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V001_01">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-house-door menu-icon text-info"></i>
        <h5 class="mt-2">メニュー選択へ戻る</h5>
      </button>
    </form>
  </div>

  <div class="col"></div> <!-- 空白 -->
  <div class="col"></div> <!-- 空白 -->
  
  
  
  
</div>
</form>
<!-- <div class="menu-container" style="margin-top: 20px;"> -->
<!--   <!-- メインメニューに戻る -->
<!--   <div class="menu-card" onclick="navigateTo('/jsys_proto/jsysFC?buttonId=V300_01_01')"> -->
<!--     <i class="bi bi-house-door menu-icon text-danger"></i> -->
<!--     <div class="menu-title">メインメニューに戻る</div> -->
<!--   </div> -->
<!-- </div> -->

</body>
</html>
<%@ include file="footer.jsp" %>
