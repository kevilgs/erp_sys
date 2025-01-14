package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Admin_panel_prod_manage_pojo;

import java.io.IOException;

/**
 * Servlet implementation class Admin_panel_prod_manage
 */
@WebServlet("/Admin_panel_prod_manage")
public class Admin_panel_prod_manage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		
		Admin_panel_prod_manage_pojo pojo = new Admin_panel_prod_manage_pojo();
		pojo.setId(Integer.parseInt(request.getParameter("id")));
		pojo.setName(request.getParameter("name"));
		pojo.setCategory(request.getParameter("category"));
		pojo.setCost(Float.parseFloat(request.getParameter("cost")));
		pojo.setSellingprice(Float.parseFloat(request.getParameter("sellinprice")));
		pojo.setStock(Integer.parseInt(request.getParameter("stock")));
		pojo.setReorderlevel(Integer.parseInt(request.getParameter("reorderlevel")));
		pojo.setSupplierinfo(request.getParameter("supplierinfo"));
		String dateString = request.getParameter("date");
		java.time.LocalDate parsedDate = java.time.LocalDate.parse(dateString);
		pojo.setDate(parsedDate);
		
		if("addproduct".equals(action)) {
			pojo.addProduct(pojo);
		}else if("deleteproduct".equals(action)) {
			pojo.deleteProduct(pojo);
		}else if("editproduct".equals(action)) {
			pojo.editProduct(pojo);
		}
	}

} 
