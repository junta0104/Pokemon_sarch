/**
 * All Rights Reserved, Copyright(c) Fujitsu Learning Media Limited
 *
 * FrontController.java
 *
 */
package jsys.sales.web;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = { "/jsysFC" })
public class FrontController extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 遷移先ページ名の設定
		String path="/WEB-INF/jsp/";
		String page = null;
		// Actionクラス
		ActionIF action = null;
		// パラメータの取得
		request.setCharacterEncoding("UTF-8");
		String buttonId = request.getParameter("buttonId");

		// パラメータ未送信または空文字の場合
		if (buttonId == null || buttonId.equals("")) {
			buttonId = "V200_01_01";

		}
		// リクエスト種別の判定
		switch (buttonId) {
		// TODO 2 プロトタイピング作成演習：得意先検索各種画面遷移に関連するcaseを追加してください。
			case "V200_01_01":
				// ログイン画面へボタン（デフォルト）
				page = "V200_01CustomerManagementMenu.jsp";
				break;
			case "V200_01_02":
				//顧客検索画面
				page = "V201_01CustomerFindView.jsp";
				break;
			case "V201_01_02":
				// 顧客結果検索画面
				action = new CustomerFindAction();
				page = action.execute(request);
				break;
			case "V200_01_03":
				//得意先登録
				//action = new FindAllItemAction();
				page = action.execute(request);
				break;
			case "V204_01_07":
				//得意先削除
				action = new CustomerUpdateAction();
				page = action.execute(request);
				break;
			case "V200_01_04":
				//得意先変更
//				action = new CustomerUpdateAction();
//				page = action.execute(request);
//				break;
				page = "V204_01CustomerUpdate.jsp";
				break;
			case "V200_01_06":
				//得意先一覧
				//action = new FindAllItemAction();
				page = action.execute(request);
				break;
		}

		// 結果画面に転送
		RequestDispatcher rd = request.getRequestDispatcher(path + page);
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
