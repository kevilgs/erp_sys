package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Admin_dash_pojo;

import java.io.IOException;

/**
 * Servlet implementation class Admin_Dash
 */
@WebServlet("/Admin_Dash")
public class Admin_Dash extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		Admin_dash_pojo pojo = new Admin_dash_pojo();
        String jsonResult = pojo.getSalesTrend();
        
        if (jsonResult != null) {
            request.setAttribute("salesTrendData", jsonResult);
        }

        // Forward to JSP
        request.getRequestDispatcher("salesTrend.jsp").forward(request, response);
    }
    */
		Admin_dash_pojo pojo = new Admin_dash_pojo();

        // Fetch sales trend data
        String salesTrendData = pojo.getSalesTrend();
        request.setAttribute("salesTrendData", salesTrendData);
        request.getRequestDispatcher("salesTrend.jsp").forward(request, response);
        
        String abc_classificationData = pojo.getAbcClassification();
        request.setAttribute("abc_classificationData", abc_classificationData);
        
        String inventoryratioData = pojo.getInventoryRatio();
        request.setAttribute("inventoryratioData", inventoryratioData);
        
        String profitAnalysisData = pojo.getProfitAnalysis();
        request.setAttribute("profitAnalysis", profitAnalysisData);
        
	}
	
}

	


