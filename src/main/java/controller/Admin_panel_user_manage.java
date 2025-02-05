package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Admin_panel_user_manage_pojo;

import java.io.IOException;

/**
 * Servlet implementation class Admin_panel_user_manage
 */
@WebServlet("/Admin_panel_user_manage")
public class Admin_panel_user_manage extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String flag = request.getParameter("button");
		Admin_panel_user_manage_pojo pojo = new Admin_panel_user_manage_pojo();
		
		pojo.setId(Integer.parseInt(request.getParameter("id")));
		pojo.setMail(request.getParameter("mailId"));
		pojo.setName(request.getParameter("name"));
		pojo.setPword(request.getParameter("pword"));
		pojo.setRole(request.getParameter("role"));
		
		
		if ("activate".equals(flag)) {
			pojo.activateUser(pojo);
			
		}else if("deactivate".equals(flag)) {
			
			pojo.deactivateUser(pojo);
			
		}else if("edit".equals(flag)) {
			
			pojo.editUserDetails(pojo);
		}
		

}
}
