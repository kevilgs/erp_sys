package admin_dash_op;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.GetConnection;

public class Admin_dash_op_im  implements Admin_dash{

	@Override
	public String getSalesTrend() {
		String result = null;

		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("SELECT demo_erp.SalesTrend()");

			ResultSet rs = callableStatement.executeQuery();

			if(rs.next()) {
				result = rs.getString(1);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public String getAbcClassification() {
		String result = null;

		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("SELECT demo_erp.ABC_Classification()");

			ResultSet rs = callableStatement.executeQuery();

			if(rs.next()) {
				result = rs.getString(1);
				System.out.println(result);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}


	@Override
	public String getInventoryRatio() {
		String result = null;

		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("SELECT demo_erp.RatioTurnover()");

			ResultSet rs = callableStatement.executeQuery();

			if(rs.next()) {
				result = rs.getString(1);
				System.out.println(result);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public String getProfitAnalysis() {
		String result = null;

		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("SELECT demo_erp.GetProfitabilityAnalysis()");

			ResultSet rs = callableStatement.executeQuery();

			if(rs.next()) {
				result = rs.getString(1);
				System.out.println(result);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}
}



