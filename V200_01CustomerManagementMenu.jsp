<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<!-- カスタムCSS -->
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
<div class="row row-cols-1 row-cols-md-3 g-4">
  <!-- 検索 -->
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V200_01_02">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-search menu-icon text-primary"></i>
        <h5 class="mt-2">得意先検索</h5>
      </button>
    </form>
  </div>

  <!-- 一覧 -->
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V200_01_06">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-list-ul menu-icon text-success"></i>
        <h5 class="mt-2">得意先一覧</h5>
      </button>
    </form>
  </div>

  <!-- 登録 -->
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V200_01_03">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-person-plus menu-icon text-warning"></i>
        <h5 class="mt-2">得意先登録</h5>
      </button>
    </form>
  </div>

  <!-- 削除 -->
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V200_01_05">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-person-x menu-icon text-danger"></i>
        <h5 class="mt-2">得意先削除</h5>
      </button>
    </form>
  </div>

  <!-- 変更 -->
  <div class="col">
    <form action="/jsys/jsysFC" method="post">
      <input type="hidden" name="buttonId" value="V200_01_04">
      <button type="submit" class="card menu-tile w-100 text-center p-4 shadow-sm border-0">
        <i class="bi bi-pencil-square menu-icon text-info"></i>
        <h5 class="mt-2">得意先変更</h5>
      </button>
    </form>
  </div>
</div>

<%@ include file="footer.jsp" %>