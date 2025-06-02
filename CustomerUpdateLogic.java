package jsys.sales.logic;

import java.sql.Connection;
import java.sql.SQLException;
import jsys.sales.dao.*;
import jsys.sales.common.*;
import jsys.sales.entity.Customer;

public class CustomerUpdateLogic {

    public boolean updateCustomerData(String custCode, Customer updatedCustomer) throws SalesBusinessException, SalesSystemException {
        Connection con = null;
        boolean result = false;

        try {
            // データベースの接続を取得する
            con = ConnectionManager.getConnection();

            // DAOを生成し、現在のデータを取得する
            CustomerDAO customerDAO = new CustomerDAO(con);
            Customer existingCustomer = customerDAO.findCustomer(custCode);

            // 該当コードが見つからない場合、業務エラーをスロー
            if (existingCustomer == null) {
                throw new SalesBusinessException("該当する得意先コードが存在しません。");
            }

            // データベースの更新を実行
            result = customerDAO.updateCustomer(updatedCustomer);
            if (!result) {
                throw new SalesBusinessException("得意先データの更新に失敗しました。");
            }

        } catch (SQLException e) {
            // データベースエラーの場合、システムエラーをスロー
            throw new SalesSystemException("システムエラーが発生しました。システム管理者に連絡してください。");
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                throw new SalesSystemException("システムエラーが発生しました。システム管理者に連絡してください");
            }
        }

        return result;
    }


}
