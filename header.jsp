<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <header>
    <div class="d-flex justify-content-between align-items-center flex-wrap w-100">
      <div class="header-title">得意先変更システム</div>
      <div class="button-group">
        <button class="btn btn-light" onclick="location.href='CustomerFindView.jsp'">
          <i class="bi bi-search"></i> 検索
        </button>
        <button class="btn btn-light" onclick="location.href='CustomerListView.jsp'">
          <i class="bi bi-list-ul"></i> 一覧
        </button>
        <button class="btn btn-light" onclick="location.href='CustomerRegisterView.jsp'">
          <i class="bi bi-person-plus"></i> 登録
        </button>
        <button class="btn btn-light" onclick="location.href='V204_01CustomerUpdate.jsp'">
          <i class="bi bi-pencil-square"></i> 変更
        </button>
        <button class="btn btn-light" onclick="location.href='CustomerDeleteView.jsp'">
          <i class="bi bi-trash"></i> 削除
        </button>
      </div>
    </div>
  </header>