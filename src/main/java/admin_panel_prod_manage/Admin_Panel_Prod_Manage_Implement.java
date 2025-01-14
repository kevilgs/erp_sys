package admin_panel_prod_manage;

import java.sql.CallableStatement;
import java.sql.SQLException;

import db.GetConnection;
import model.Admin_panel_prod_manage_pojo;

public class Admin_Panel_Prod_Manage_Implement implements Admin_Panel_Prod_Manage {

	@Override
	public void addProduct(Admin_panel_prod_manage_pojo pojo) {
		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.AddProduct(?,?,?,?,?,?,?,?)}");
			callableStatement.setString(1, pojo.getName());
			callableStatement.setString(2, pojo.getCategory());
			callableStatement.setFloat(3,pojo.getCost());
			callableStatement.setFloat(4, pojo.getSellingprice());
			callableStatement.setInt(5,pojo.getStock());
			callableStatement.setInt(6, pojo.getReorderlevel());
			callableStatement.setString(7,pojo.getSupplierinfo());
			java.sql.Date sqlExpiryDate = java.sql.Date.valueOf(pojo.getDate());
			callableStatement.setDate(8, sqlExpiryDate);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteProduct(Admin_panel_prod_manage_pojo pojo) {
		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.EditProduct(?)}");
			callableStatement.setInt(1, pojo.getId());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void editProduct(Admin_panel_prod_manage_pojo pojo) {
		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.EditProduct(?,?,?,?,?,?,?,?,?)}");
			callableStatement.setInt(1, pojo.getId());
			callableStatement.setString(2, pojo.getName());
			callableStatement.setString(3, pojo.getCategory());
			callableStatement.setFloat(4,pojo.getCost());
			callableStatement.setFloat(5, pojo.getSellingprice());
			callableStatement.setInt(6,pojo.getStock());
			callableStatement.setInt(7, pojo.getReorderlevel());
			callableStatement.setString(8,pojo.getSupplierinfo());
			java.sql.Date sqlExpiryDate = java.sql.Date.valueOf(pojo.getDate());
			callableStatement.setDate(9, sqlExpiryDate);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



}
