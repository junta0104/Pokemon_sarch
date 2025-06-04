<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <header>
    <div class="d-flex justify-content-between align-items-center flex-wrap w-100">
      <div class="header-title">利用者：<c:out value="${sessionScope.loginEmployee.employeename }"/></div>
      <div class="button-group">
        <form action="/jsys/jsysFC" method="post">
			 <button class="btn btn-light" name="buttonId" value="V300_01_02">
			   <i class="bi bi-search"></i> 検索
			 </button>
			 <button class="btn btn-light" name="buttonId" value="V300_01_03">
			   <i class="bi bi-list-ul"></i> 一覧
			 </button>
			 <button class="btn btn-light" name="buttonId" value="V300_01_04">
			   <i class="bi bi-person-plus"></i> 登録
			 </button>
			 <button class="btn btn-light" name="buttonId" value="V204_01">
			   <i class="bi bi-pencil-square"></i> 変更
			 </button>
			 <button class="btn btn-light" name="buttonId" value="V300_01_05">
			   <i class="bi bi-trash"></i> 削除
			 </button>
		</form>

      </div>
    </div>
  </header>