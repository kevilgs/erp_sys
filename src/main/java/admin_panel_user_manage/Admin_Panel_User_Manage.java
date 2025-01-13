package admin_panel_user_manage;

import model.Admin_panel_user_manage_pojo;

public interface Admin_Panel_User_Manage {
	
	void activateUser(Admin_panel_user_manage_pojo pojo);
	
	void deactivateUser(Admin_panel_user_manage_pojo pojo);
	
	void editUserDetails(Admin_panel_user_manage_pojo pojo);

}
