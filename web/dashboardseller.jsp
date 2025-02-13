<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Sidebar Styling */
        .sidebar {
            background: linear-gradient(135deg, #4A90E2, #87CEFA); /* Blue gradient */
            height: 100vh;
            width: 250px;
            color: #fff;
            padding-top: 20px;
            position: fixed;
            border-right: 3px solid #4A90E2;
        }
        .sidebar .nav-link {
            color: #fff;
            margin: 10px 0;
            font-weight: bold;
        }
        .sidebar .nav-link.active, .sidebar .nav-link:hover {
            background-color: #4A90E2;
            color: #fff;
            border-radius: 8px;
        }

        /* Main Content Styling */
        .content {
            margin-left: 270px;
            padding: 20px;
        }
        h2 {
            font-size: 2em;
            color: #444;
            margin-bottom: 20px;
        }

        /* Table Styling */
        .table thead th {
            background-color: #4A90E2;
            color: #fff;
            font-weight: 500;
        }
        .table tbody tr:hover {
            background-color: #E8F4FB;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
            }
            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Hidden input elements for data retrieval -->
    <input value="${requestScope.listUser}" hidden class="users">
    <input value="${requestScope.listProduct}" hidden class="products">
    
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar d-flex flex-column p-3">
            <div class="d-flex flex-column justify-content-center align-items-center">
                <img src="images/admin.png" alt="alt" style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover;">
                <p class="mt-2">Hello, ${sessionScope.account.username}</p>
            </div>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li><a href="home2.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-house mr-2"></i>Home</a></li>
                <li><a href="dashboardseller.jsp" class="nav-link d-flex align-items-center active"><i class="fa-solid fa-chart-line mr-2"></i>Dashboard</a></li>
                <li><a href="listorderseller.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-cart-arrow-down mr-2"></i>Orders</a></li>
                <li><a href="listproduct" class="nav-link d-flex align-items-center"><i class="fa-solid fa-box-open mr-2"></i>Products</a></li>
                <li><a href="listuserseller.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-users mr-2"></i>Customers</a></li>
            </ul>
            <hr>
        </div>

        <!-- Main Content -->
        <div class="content">
            <div class="chart-container">
                <h1>Top 5 Customers by Purchases</h1>
                <canvas id="userChart"></canvas>    
            </div>
            <div class="chart-container">
                <h1>Top 5 Best Sellers</h1>
                <canvas id="productChart"></canvas>    
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Process data for the "Top 5 Customers by Purchases" chart
        const listUser = document.querySelector('.users');
        const listmoney = <%= request.getAttribute("listmoney") %>;
        const userLabels = listUser.value.slice(1, -1).split(', ');

        const userData = {
            labels: userLabels,
            datasets: [{
                label: 'Top 5 Customers',
                data: listmoney,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)',
                    'rgb(54, 162, 235)',
                ],
                borderWidth: 1
            }]
        };

        const userChartCtx = document.getElementById('userChart').getContext('2d');
        new Chart(userChartCtx, { type: 'bar', data: userData });

        // Process data for the "Top 5 Best Sellers" chart
        const listProduct = document.querySelector('.products');
        const listQuantity = <%= request.getAttribute("listQuantity") %>;
        const productLabels = listProduct.value.slice(1, -1).split(', ');

        const productData = {
            labels: productLabels,
            datasets: [{
                label: 'Top 5 Best Sellers',
                data: listQuantity,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)',
                    'rgb(54, 162, 235)',
                ],
                borderWidth: 1
            }]
        };

        const productChartCtx = document.getElementById('productChart').getContext('2d');
        new Chart(productChartCtx, { type: 'bar', data: productData });
    </script>
</body>
</html>
