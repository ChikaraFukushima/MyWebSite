package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import base.DBManager;
import beans.DeliveryMethodDataBeans;


public class DeliveryMethodDAO {

	/**
	 * DBに登録された特典コース情報を取得
	 * @return {DeliveryMethodDataBeans}ECシステムの運送費部分で代用
	 * @throws SQLException
	 */
	public static ArrayList<DeliveryMethodDataBeans> getAllDeliveryMethodDataBeans() throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_delivery_method");

			ResultSet rs = st.executeQuery();

			ArrayList<DeliveryMethodDataBeans> deliveryMethodDataBeansList = new ArrayList<DeliveryMethodDataBeans>();
			while (rs.next()) {
				DeliveryMethodDataBeans dmdb = new DeliveryMethodDataBeans();
				dmdb.setId(rs.getInt("id"));
				dmdb.setName(rs.getString("name"));
				dmdb.setPrice(rs.getInt("price"));
				deliveryMethodDataBeansList.add(dmdb);
			}

			System.out.println("searching all DeliveryMethodDataBeans has been completed");

			return deliveryMethodDataBeansList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 * コースをIDをもとに取得
	 * @param DeliveryMethodId(こちらも代用)
	 * @return DeliveryMethodDataBeans
	 * @throws SQLException
	 */
	public static DeliveryMethodDataBeans getDeliveryMethodDataBeansByID(int DeliveryMethodId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT * FROM m_delivery_method WHERE id = ?");
			st.setInt(1, DeliveryMethodId);

			ResultSet rs = st.executeQuery();

			DeliveryMethodDataBeans dmdb = new DeliveryMethodDataBeans();
			if (rs.next()) {
				dmdb.setId(rs.getInt("id"));
				dmdb.setName(rs.getString("name"));
				dmdb.setPrice(rs.getInt("price"));
			}

			System.out.println("searching DeliveryMethodDataBeans by DeliveryMethodID has been completed");

			return dmdb;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/*
     *購入IDによる特典コース検索
     * @param buyId
     * @return dmdb DeliveryMethodDataBeans
     *             コースの情報に対応するデータを持つJavaBeans
     * @throws SQLException
     */
	public static DeliveryMethodDataBeans getDeliveryMethodDataBeansByBuyId(int buyId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT m_delivery_method.name,"
					+ " m_delivery_method.price"
					+ " FROM t_buy"
					+ " JOIN m_delivery_method"
					+ " ON m_delivery_method.id = t_buy.delivery_method_id"
					+ " WHERE t_buy.id = ?");
			st.setInt(1, buyId);

			ResultSet rs = st.executeQuery();
			DeliveryMethodDataBeans dmdb = new DeliveryMethodDataBeans();

			while (rs.next()) {
				dmdb.setName(rs.getString("name"));
				dmdb.setPrice(rs.getInt("m_delivery_method.price"));

			}

			System.out.println("searching DeliveryMethodDataBeans by BuyID has been completed");
			return dmdb;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}
}
