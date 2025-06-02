/**
 * CustomerDAO.java
 *
 * All Rights Reserved, Copyright(c) Fujitsu Learning Media Limited
 */

package jsys.sales.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jsys.sales.entity.Customer;

public class CustomerDAO {
	/** データベースの接続 */
	private Connection con;

	/**
	 * コンストラクタ
	 * @param con
	 */
	public CustomerDAO(Connection con) {
		super();
		this.con = con;
	}
	/**
	 *
	 * @param custCode
	 * @return
	 * @throws SQLException
	 */
	public Customer findCustomer(String custCode) throws SQLException{
		String sql = "select customer_code, customer_name, customer_telno, customer_postalcode, customer_address, discount_rate"
				+ " from customer where customer_code=? and delete_flag=false";
		PreparedStatement stmt = null;
		ResultSet res = null;
		Customer customer = null;

		try {
			// PreparedStatementの作成
			stmt = con.prepareStatement(sql);
			// パラメータの設定
			stmt.setString(1, custCode);
			// SQL文の実行
			res = stmt.executeQuery();
			// 結果セットから情報を取り出す
			if (res.next()) {
				// Employeeオブジェクトの生成
				customer = new Customer(res.getString("customer_code"), res.getString("customer_name"),
						res.getString("customer_telno"),res.getString("customer_postalcode"),
						res.getString("customer_address"), res.getInt("discount_rate"));
			}

		} finally {
			// クローズ処理
			if (res != null) {
				res.close();
			}
			if (stmt != null) {
				stmt.close();
			}
		}

		return customer;
	}
	public boolean updateCustomer(Customer customer) throws SQLException {
		String sql = "UPDATE customer SET customer_name = ?, customer_telno = ?, customer_postalcode = ?, "
				+ "customer_address = ?, discount_rate = ? "
				+ "WHERE customer_code = ? ";

		PreparedStatement stmt = null;
		boolean result = false;

		try {
			stmt = con.prepareStatement(sql);
			//パラメータの設定
			stmt.setString(1, customer.getCustName());
			stmt.setString(2, customer.getTelNo());
			stmt.setString(3, customer.getPostalCode());
			stmt.setString(4, customer.getAddress());
			stmt.setInt(5, customer.getDiscountRate());
			stmt.setString(6, customer.getCustCode());

			int count = stmt.executeUpdate();

			if(count == 1) {
				result = true;
			}

		} finally {
			if (stmt != null) {
				stmt.close();
			}
		}

		return result;
	}
	public Customer Customer(String custCode) throws SQLException{
		String sql = "select customer_code, customer_name, customer_telno, customer_postalcode, customer_address, discount_rate"
				+ " from customer where customer_code=? and delete_flag=false";
		PreparedStatement stmt = null;
		ResultSet res = null;
		Customer customer = null;

		try {
			// PreparedStatementの作成
			stmt = con.prepareStatement(sql);
			// パラメータの設定
			stmt.setString(1, custCode);
			// SQL文の実行
			res = stmt.executeQuery();
			// 結果セットから情報を取り出す
			if (res.next()) {
				// Employeeオブジェクトの生成
				customer = new Customer(res.getString("customer_code"), res.getString("customer_name"),
						res.getString("customer_telno"),res.getString("customer_postalcode"),
						res.getString("customer_address"), res.getInt("discount_rate"));
			}

		} finally {
			// クローズ処理
			if (res != null) {
				res.close();
			}
			if (stmt != null) {
				stmt.close();
			}
		}

		return customer;
	}

}
