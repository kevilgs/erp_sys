package admin_panel_prod_manage;

import model.Admin_panel_prod_manage_pojo;
import model.Admin_panel_user_manage_pojo;

public interface Admin_Panel_Prod_Manage {
	
	void addProduct(Admin_panel_prod_manage_pojo pojo);
	void deleteProduct(Admin_panel_prod_manage_pojo pojo);
	void editProduct(Admin_panel_prod_manage_pojo pojo);

}
