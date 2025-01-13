<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.*" %>
<%@ page import="java.util.*" %>
<%@ page import="model.Admin_dash_pojo" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Trend Analysis</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/canvasjs.min.js"></script>
</head>
<body>
    <%
        // Get the JSON string from request attribute
        String jsonData = (String) request.getAttribute("salesTrendData");
        
        // If null (direct JSP access), get it from POJO
        //if(jsonData == null) {
        //    Admin_dash_pojo pojo = new Admin_dash_pojo();
        //    jsonData = pojo.getSalesTrend();
        //}
        
        // Create Gson instance
        Gson gson = new Gson();
        
        // Parse JSON string into array of objects
        JsonArray jsonArray = JsonParser.parseString(jsonData).getAsJsonArray();
        
        // Create data points array for CanvasJS
        StringBuilder dataPoints = new StringBuilder();
        dataPoints.append("[");
        
        for (int i = 0; i < jsonArray.size(); i++) {
            JsonObject obj = jsonArray.get(i).getAsJsonObject();
            String month = obj.get("month").getAsString();
            JsonElement percentageChange = obj.get("percentage_change");
            
            dataPoints.append("{");
            dataPoints.append("label: '" + month + "',");
            
            // Handle null percentage_change for first month
            if (percentageChange.isJsonNull()) {
                dataPoints.append("y: null");
            } else {
                dataPoints.append("y: " + percentageChange.getAsDouble());
            }
            
            dataPoints.append("}");
            
            if (i < jsonArray.size() - 1) {
                dataPoints.append(",");
            }
        }
        dataPoints.append("]");
    %>

    <div id="chartContainer" style="height: 370px; width: 100%;"></div>

    <script>
    window.onload = function() {

        var chart = new CanvasJS.Chart("chartContainer", {
            theme: "light2",
            title: {
                text: "Monthly Sales Trend Analysis"
            },
            axisX: {
                title: "Month",
                labelAngle: -45
            },
            axisY: {
                title: "Percentage Change",
                suffix: "%"
            },
            data: [{
                type: "line",
                markerSize: 5,
                xValueFormatString: "MMM YYYY",
                yValueFormatString: "#.##'%'",
                dataPoints: <%= dataPoints.toString() %>
            }]
        });
        chart.render();
    }
    </script>
</body>
</html>