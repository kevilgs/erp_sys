package model;

import java.util.HashMap;
import java.util.Map;

import admin_dash_op.Admin_dash_op_im;

public class Admin_dash_pojo {
	/*
	    private String jsonResult;

	    public String getJsonResult() {
	        return jsonResult;
	    }

	    public void setJsonResult(String jsonResult) {
	        this.jsonResult = jsonResult;
	    }
	    
	    public String getSalesTrend() {
	        Admin_dash_op_im implement = new Admin_dash_op_im();
	        try {
	            return implement.getSalesTrend();
	        } catch (Exception e) {
	            return "Error fetching sales trend data";
	        }
	    }
	    */
		private Map<String, String> jsonResults = new HashMap<>();

		public String getJsonResult(String key) {
			return jsonResults.getOrDefault(key, "No data available");
    }

		public void setJsonResult(String key, String value) {
			jsonResults.put(key, value);
    }

		public String getSalesTrend() {
			Admin_dash_op_im implement = new Admin_dash_op_im();
			try {
				String result = implement.getSalesTrend();
				setJsonResult("salesTrend", result);
				return result;
			} catch (Exception e) {
				setJsonResult("salesTrend", "Error fetching sales trend data");
				return "Error fetching sales trend data";
			}
		}
		
		public String getAbcClassification() {
			Admin_dash_op_im implement = new Admin_dash_op_im();
			try {
				String result = implement.getAbcClassification();
				setJsonResult("abc_classification", result);
				return result;
			} catch (Exception e) {
				setJsonResult("salesTrend", "Error fetching abc classification data");
				return "Error fetching abc classification data";
			}
		}
		
		public String getInventoryRatio() {
			Admin_dash_op_im implement = new Admin_dash_op_im();
			try {
				String result = implement.getInventoryRatio();
				setJsonResult("inventoryratio", result);
				return result;
			} catch (Exception e) {
				setJsonResult("salesTrend", "Error fetching inventory turnover ratio data");
				return "Error fetching inventory turnover ratio data";
			}
		}
		
		public String getProfitAnalysis() {
			Admin_dash_op_im implement = new Admin_dash_op_im();
			try {
				String result = implement.getProfitAnalysis();
				setJsonResult("profitanalysis", result);
				return result;
			} catch (Exception e) {
				setJsonResult("salesTrend", "Error fetching profit analysis data");
				return "Error fetching profit analysis data";
			}
		}
	}
	

