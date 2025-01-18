<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.*" %>
<%@ page import="java.util.*" %>
<%@ page import="model.Admin_dash_pojo" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Trend Analysis and ABC Classification</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }
        .chart-container {
            max-width: 800px;
            margin: 20px auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%
        String jsonData = (String) request.getAttribute("salesTrendData");
        Gson gson = new Gson();
        JsonArray salesTrendArray = JsonParser.parseString(jsonData).getAsJsonArray();
        StringBuilder salesTrendLabels = new StringBuilder();
        StringBuilder salesTrendData = new StringBuilder();

        salesTrendLabels.append("[");
        salesTrendData.append("[");

        for (int i = 0; i < salesTrendArray.size(); i++) {
            JsonObject obj = salesTrendArray.get(i).getAsJsonObject();
            salesTrendLabels.append("'" + obj.get("month").getAsString() + "'");
            salesTrendData.append(obj.get("percentage_change").isJsonNull() ? "null" : obj.get("percentage_change").getAsDouble());

            if (i < salesTrendArray.size() - 1) {
                salesTrendLabels.append(",");
                salesTrendData.append(",");
            }
        }
        salesTrendLabels.append("]");
        salesTrendData.append("]");

        String abcData = (String) request.getAttribute("abc_classificationData");
        JsonArray abcArray = JsonParser.parseString(abcData).getAsJsonArray();
        Map<String, Integer> abcTotals = new HashMap<>();

        for (int i = 0; i < abcArray.size(); i++) {
            JsonObject obj = abcArray.get(i).getAsJsonObject();
            abcTotals.put(obj.get("class").getAsString(), 
                abcTotals.getOrDefault(obj.get("class").getAsString(), 0) + obj.get("product").getAsInt());
        }

        StringBuilder abcLabels = new StringBuilder("[");
        StringBuilder abcDataPoints = new StringBuilder("[");

        int count = 0;
        for (Map.Entry<String, Integer> entry : abcTotals.entrySet()) {
            abcLabels.append("'Class " + entry.getKey() + "'");
            abcDataPoints.append(entry.getValue());
            if (++count < abcTotals.size()) {
                abcLabels.append(",");
                abcDataPoints.append(",");
            }
        }
        abcLabels.append("]");
        abcDataPoints.append("]");

        String profitabilityData = (String) request.getAttribute("profitAnalysis");
        JsonObject profitabilityObj = JsonParser.parseString(profitabilityData).getAsJsonObject();

        // Check if the keys exist and are of the correct type
        JsonArray lowProfitProducts = profitabilityObj.has("LowProfitProducts") ? profitabilityObj.getAsJsonArray("LowProfitProducts") : new JsonArray();
        JsonArray highProfitProducts = profitabilityObj.has("HighProfitProducts") ? profitabilityObj.getAsJsonArray("HighProfitProducts") : new JsonArray();

        StringBuilder profitLabels = new StringBuilder("[");
        StringBuilder lowProfitData = new StringBuilder("[");
        StringBuilder highProfitData = new StringBuilder("[");

        // Process Low Profit Products
        for (int i = 0; i < lowProfitProducts.size(); i++) {
            JsonObject product = lowProfitProducts.get(i).getAsJsonObject();
            String productName = product.get("ProductName").getAsString();
            double profitMargin = product.get("ProfitMargin").getAsDouble();

            profitLabels.append("'").append(productName).append("'");
            lowProfitData.append(profitMargin);

            if (i < lowProfitProducts.size() - 1) {
                profitLabels.append(",");
                lowProfitData.append(",");
            }
        }

        // Process High Profit Products
        for (int i = 0; i < highProfitProducts.size(); i++) {
            JsonObject product = highProfitProducts.get(i).getAsJsonObject();
            double profitMargin = product.get("ProfitMargin").getAsDouble();

            highProfitData.append(profitMargin);

            if (i < highProfitProducts.size() - 1) {
                highProfitData.append(",");
            }
        }

        profitLabels.append("]");
        lowProfitData.append("]");
        highProfitData.append("]");
        
     // Inventory Turnover Data
        String turnoverData = (String) request.getAttribute("inventoryratioData");

        
        JsonArray turnoverArray = JsonParser.parseString(turnoverData).getAsJsonArray();

        StringBuilder turnoverLabels = new StringBuilder();
        StringBuilder turnoverDataPoints = new StringBuilder();

        turnoverLabels.append("[");
        turnoverDataPoints.append("[");

        for (int i = 0; i < turnoverArray.size(); i++) {
            JsonObject obj = turnoverArray.get(i).getAsJsonObject();
            int year = obj.get("Year").getAsInt();
            double ratio = obj.get("Ratio").getAsDouble();

            turnoverLabels.append("'").append(year).append("'");
            turnoverDataPoints.append(ratio);

            if (i < turnoverArray.size() - 1) {
                turnoverLabels.append(",");
                turnoverDataPoints.append(",");
            }
        }

        turnoverLabels.append("]");
        turnoverDataPoints.append("]");

    %>

    <div class="chart-container">
        <h2>Monthly Sales Trend Analysis</h2>
        <canvas id="salesTrendChart"></canvas>
    </div>

    <div class="chart-container">
        <h2>ABC Classification Analysis</h2>
        <canvas id="abcChart"></canvas>
    </div>

    <div class="chart-container">
        <h2>Product Profitability Analysis</h2>
        <canvas id="profitChart"></canvas>
    </div>

    <div class="chart-container">
        <h2>Inventory Turnover Ratio</h2>
        <canvas id="turnoverChart"></canvas>
    </div>
    
    

    <script>
        const salesTrendCtx = document.getElementById('salesTrendChart').getContext('2d');
        const salesTrendChart = new Chart(salesTrendCtx, {
            type: 'line',
            data: {
                labels: <%= salesTrendLabels.toString() %>,
                datasets: [{
                    label: 'Percentage Change',
                    data: <%= salesTrendData.toString() %>,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    fill: true,
                    tension: 0.4
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { position: 'top' },
                    tooltips: {
                        callbacks: {
                            label: function(tooltipItem, data) {
                                const value = tooltipItem.yLabel;
                                if (value === null || value === undefined) {
                                    return 'No data';
                                }
                                return value + '%';
                            }
                        }
                    }

                },
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });

        const abcCtx = document.getElementById('abcChart').getContext('2d');
        const abcChart = new Chart(abcCtx, {
            type: 'pie',
            data: {
                labels: <%= abcLabels.toString() %>,
                datasets: [{
                    data: <%= abcDataPoints.toString() %>,
                    backgroundColor: ['#ff6384', '#36a2eb', '#cc65fe'],
                    hoverOffset: 4
                }]
            }
        });
    
        
        const turnoverCtx = document.getElementById('turnoverChart').getContext('2d');
        const turnoverChart = new Chart(turnoverCtx, {
            type: 'bar',
            data: {
                labels: <%= turnoverLabels.toString() %>,
                datasets: [{
                    label: 'Inventory Turnover Ratio',
                    data: <%= turnoverDataPoints.toString() %>,
                    backgroundColor: [
                        '#7cb342', // Green
                        '#ffeb3b', // Yellow
                        '#ff9800', // Orange
                        '#f44336'  // Red
                    ],
                    borderColor: [
                        '#558b2f',
                        '#fbc02d',
                        '#e67e22',
                        '#d32f2f'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                        labels: {
                            color: '#333',
                            font: {
                                size: 16
                            }
                        }
                    },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                        callbacks: {
                            label: function(context) {
                                return context.dataset.label + ': ' + context.raw.toFixed(2);
                            }
                        }
                    }
                },
                scales: {
                    x: {
                        grid: {
                            display: false
                        },
                        ticks: {
                            color: '#333',
                            font: {
                                size: 14
                            }
                        }
                    },
                    y: {
                        beginAtZero: true,
                        grid: {
                            color: '#ddd'
                        },
                        ticks: {
                            color: '#333',
                            font: {
                                size: 14
                            },
                            callback: function(value) {
                                return value.toFixed(2);
                            }
                        }
                    }
                }
            }
        });

    </script>
</body>
</html>
