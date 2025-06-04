<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得意先変更システム</title>

    <!-- Bootstrap & Custom CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Style.css">

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

        .header-title {
            font-size: 1.25rem;
            font-weight: bold;
            margin: 0;
        }
    </style>
</head>

<body>

    <!-- タイトル -->
    <div style="text-align: center">
        <h2>得意先変更</h2>
    </div>

    <!-- メイン画面へ戻る -->
    <div style="text-align: right; margin: 1rem;">
        <form action="/jsys/jsysFC" method="post" style="display: inline;">
            <button type="submit" name="buttonId" value="V002_01">メイン画面へ戻る</button>
        </form>
    </div>

    <div style="width: 60%; margin: 1rem auto;">
    <form action="/jsys/jsysFC" method="post" style="display: flex; align-items: center; gap: 1rem;">
        <label style="white-space: nowrap; font-weight: bold;">得意先コード：</label>
        <input class="form-control" type="text" name="custCode"
               value="${requestScope.custCode}" title="得意先コードを入力してください" />
        <button type="submit" name="buttonId" value="V204_03"
                style="flex-shrink: 0; white-space: nowrap;">検索</button>
    </form>
</div>

    <!-- 顧客情報入力 -->
    <div style="text-align: center;">
        <form action="/jsys/jsysFC" method="post">
            <table class="table table-bordered" style="width: 60%; margin: auto; background-color: white;">
                <tr>
                    <th style="width: 30%;">得意先名</th>
                    <td>
                        <input class="form-control" type="text" name="custName"
                               value="${requestScope.custName}" title="得意先名を入力してください" />
                    </td>
                </tr>
                <tr>
                    <th>電話番号</th>
                    <td>
                        <input class="form-control" type="text" name="telNo"
                               value="${requestScope.telNo}" title="電話番号を入力してください" />
                    </td>
                </tr>
                <tr>
                    <th>郵便番号</th>
                    <td>
                        <input class="form-control" type="text" name="postalCode"
                               value="${requestScope.postalCode}" title="郵便番号を入力してください" />
                    </td>
                </tr>
                <tr>
                    <th>住所</th>
                    <td>
                        <input class="form-control" type="text" name="address"
                               value="${requestScope.address}" title="住所を入力してください" />
                    </td>
                </tr>
                <tr>
                    <th>割引率</th>
                    <td>
                        <input class="form-control" type="text" name="discountRate"
                               value="${requestScope.discountRate}" title="割引率（％）を入力してください" />
                    </td>
                </tr>
            </table>

            <!-- 変更ボタン -->
            <div style="text-align: center; margin-top: 1.5rem;">
                <button type="submit" name="buttonId" value="V204_04">変更</button>
            </div>
        </form>
    </div>

    <!-- エラーメッセージ -->
    <div style="text-align: center; color: red; font-weight: bold;">
        <c:out value="${requestScope.errorMessage}" />
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
