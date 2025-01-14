package model;

public class Admin_panel_prod_manage_pojo {
	
	private int id;
	private String name;
	private String category;
	private float cost;
	private float sellingprice;
	private int stock;
	private int reorderlevel;
	private String supplierinfo;
	private java.time.LocalDate date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public float getSellingprice() {
		return sellingprice;
	}
	public void setSellingprice(float sellingprice) {
		this.sellingprice = sellingprice;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getReorderlevel() {
		return reorderlevel;
	}
	public void setReorderlevel(int reorderlevel) {
		this.reorderlevel = reorderlevel;
	}
	public String getSupplierinfo() {
		return supplierinfo;
	}
	public void setSupplierinfo(String supplierinfo) {
		this.supplierinfo = supplierinfo;
	}
	public java.time.LocalDate getDate() {
		return date;
	}
	public void setDate(java.time.LocalDate date) {
		this.date = date;
	}
	
	public void addProduct(Admin_panel_prod_manage_pojo pojo) {
		new Admin_panel_prod_manage_pojo().addProduct(pojo);
		
	}
	
	public void deleteProduct(Admin_panel_prod_manage_pojo pojo) {
		new Admin_panel_prod_manage_pojo().deleteProduct(pojo);
		
	}
	
	public void editProduct(Admin_panel_prod_manage_pojo pojo) {
		new Admin_panel_prod_manage_pojo().editProduct(pojo);
	}

}
