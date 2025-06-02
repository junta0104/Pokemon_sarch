package jsys.sales.web;

import jakarta.servlet.http.HttpServletRequest;
import jsys.sales.common.*;
import jsys.sales.entity.Customer;
import jsys.sales.logic.*;

public class CustomerUpdateAction implements ActionIF {
    public String execute(HttpServletRequest request) {
        // 遷移先ページ名の初期設定
        String page = "V204_01CustomerUpdate.jsp";
        try {
            // パラメータの取得
            String custCode = request.getParameter("custCode");
            String custName = request.getParameter("custName");
            String telNo = request.getParameter("telNo");
            String postalCode = request.getParameter("postalCode");
            String address = request.getParameter("address");
            String discountRateStr = request.getParameter("discountRate");

            // 必須パラメータの検証
            if (custCode == null || custCode.isEmpty()) {
                throw new SalesBusinessException("得意先コードを入力してください。");
            }
            if (custName == null || custName.isEmpty()) {
                throw new SalesBusinessException("得意先名を入力してください。");
            }
            if (telNo == null || telNo.isEmpty()) {
                throw new SalesBusinessException("電話番号を入力してください。");
            }
            if (postalCode == null || postalCode.isEmpty()) {
                throw new SalesBusinessException("郵便番号を入力してください。");
            }
            if (address == null || address.isEmpty()) {
                throw new SalesBusinessException("住所を入力してください。");
            }
            if (discountRateStr == null || discountRateStr.isEmpty()) {
                throw new SalesBusinessException("割引率を入力してください。");
            }

            // 割引率を数値に変換し検証
            int discountRate;
            try {
                discountRate = Integer.parseInt(discountRateStr);
                if (discountRate < 0) {
                    throw new SalesBusinessException("割引率には0以上の数値を入力してください。");
                }
            } catch (NumberFormatException e) {
                throw new SalesBusinessException("割引率には数値を入力してください。");
            }

            // 更新用Customerオブジェクトの作成
            Customer customer = new Customer();
            customer.setCustCode(custCode);
            customer.setCustName(custName);
            customer.setTelNo(telNo);
            customer.setPostalCode(postalCode);
            customer.setAddress(address);
            customer.setDiscountRate(discountRate);

            // 業務Logic呼び出し
            CustomerUpdateLogic logic = new CustomerUpdateLogic();
            boolean isUpdated = logic.updateCustomerData(custCode, customer);

            // 更新結果の確認
            if (isUpdated) {
                // 処理結果の格納
                request.setAttribute("customer", customer);
            } else {
                throw new SalesBusinessException("得意先情報の更新に失敗しました。");
            }
        } catch (SalesBusinessException e) {
            // 業務エラー発生時の処理
            request.setAttribute("errorMessage", e.getMessage());
            page = "V201_01CustomerUpdateView.jsp";
        } catch (SalesSystemException e) {
            // システムエラー発生時の処理
            request.setAttribute("errorMessage", e.getMessage());
            page = "V901_01SystemErrorPage.jsp";
        }
        // 結果画面に転送
        return page;
    }
}
