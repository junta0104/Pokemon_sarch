/**
 * CustomerFindAction.java
 *
 * All Rights Reserved, Copyright(c) Fujitsu Learning Media Limited
 */

package jsys.sales.web;

import jakarta.servlet.http.HttpServletRequest;
import jsys.sales.common.*;
import jsys.sales.entity.Customer;
import jsys.sales.logic.*;

public class CustomerFindAction implements ActionIF{
	public String execute(HttpServletRequest request) {
		// 遷移先ページ名の設定
				String page = "V201_01_02CustomerFindResultView.jsp";
				try {
					// パラメータの取得

					String custCode = request.getParameter("custCode");

					// パラメータ未送信または未入力の場合
					if (custCode == null || custCode.equals("")) {
						throw new SalesBusinessException("得意先コードを入力してください。");
					}

					// 業務Logic呼び出し
					CustomerFindLogic logic = new CustomerFindLogic();
					Customer customer = logic.findCustomer(custCode);

					// 処理結果の格納
					request.setAttribute("customer", customer);
				} catch (SalesBusinessException e) {
					// 業務エラー発生時
					// エラーメッセージの格納
					request.setAttribute("errorMessage", e.getMessage());
					// 遷移先ページ名の設定
					page = "V201_01CustomerFindView.jsp";

				} catch (SalesSystemException e) {
					// システムエラー発生時
					// エラーメッセージの格納

					request.setAttribute("errorMessage", e.getMessage());
					// 遷移先ページ名の設定
					page = "V901_01SystemErrorPage.jsp";
				}
				// 結果画面に転送
				return page;
	}
}
