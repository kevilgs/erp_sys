package model;

import admin_panel_user_manage.Admin_panel_user_manage_implement;

public class Admin_panel_user_manage_pojo {
	
	private int id;
	private String mail;
	private String name;
	private String pword;
	private String role;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public void activateUser(Admin_panel_user_manage_pojo pojo) {
		
		new Admin_panel_user_manage_implement().activateUser(pojo);
		
	}
	public void deactivateUser(Admin_panel_user_manage_pojo pojo) {
		
		new Admin_panel_user_manage_implement().deactivateUser(pojo);
		
	}
	public void editUserDetails(Admin_panel_user_manage_pojo pojo) {
		
		new Admin_panel_user_manage_implement().editUserDetails(pojo);
		
	}

}
