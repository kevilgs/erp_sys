package admin_panel_user_manage;

import java.sql.CallableStatement;
import java.sql.SQLException;

import db.GetConnection;
import model.Admin_panel_user_manage_pojo;

public class Admin_panel_user_manage_implement  implements Admin_Panel_User_Manage{

	@Override
	public void activateUser(Admin_panel_user_manage_pojo pojo) {
		
		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.ActivateUser(?)}");
			callableStatement.setString(1,pojo.getMail());
			callableStatement.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deactivateUser(Admin_panel_user_manage_pojo pojo) {
		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.DeactivateUser(?)}");
			callableStatement.setString(1,pojo.getMail());
			callableStatement.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void editUserDetails(Admin_panel_user_manage_pojo pojo) {

		try {
			CallableStatement callableStatement = GetConnection.getConnection().prepareCall("{call demo_erp.EditUserDetails(?,?,?,?)}");
			callableStatement.setInt(1,pojo.getId());
			callableStatement.setString(2,pojo.getName());
			callableStatement.setString(3,pojo.getMail());
			callableStatement.setString(4,pojo.getRole());
			callableStatement.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
