<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Page</title>
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
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="sidebar d-flex flex-column p-3">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img src="images/admin.png" alt="alt" style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover;">
                        <p class="mt-2">Hello, ${sessionScope.account.username}</p>
                    </div>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li><a href="home2.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-house mr-2"></i>Home</a></li>
                        <li><a href="dashboardseller.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-chart-line mr-2"></i>Dashboard</a></li>
                        <li><a href="listorderseller.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-cart-arrow-down mr-2"></i>Orders</a></li>
                        <li><a href="listproduct" class="nav-link d-flex align-items-center active"><i class="fa-solid fa-box-open mr-2"></i>Products</a></li>
                        <li><a href="listuserseller.jsp" class="nav-link d-flex align-items-center"><i class="fa-solid fa-users mr-2"></i>Customers</a></li>
                    </ul>
                    <hr>
                </div>

                <!-- Main Content -->
                <div class="content col">
                    <h2>List Products</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ProductID</th>
                                <th>ProductName</th>
                                <th>Price</th>
                                <th>Image</th>
                                <th>Description</th>
                                <th>CategoryID</th>
                                <th colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${listproduct}">
                                <tr>
                                    <td>${p.getProductID()}</td>
                                    <td>${p.getProductName()}</td>
                                    <td>${p.getPrice()}</td>
                                    <td><img src="${p.getImage()}" alt="${p.getProductName()}" class="img-thumbnail" style="width: 80px; height: 80px;"/></td>
                                    <td>${p.getDescribe()}</td>
                                    <td>${p.getCategoryID()}</td>
                                    <td><a class="btn btn-primary btn-sm" href="updateproduct?pid=${p.getProductID()}">Update</a></td>
                                    <td><a class="btn btn-danger btn-sm" href="deleteproduct?pid=${p.getProductID()}" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <a href="AddProduct.jsp" class="btn btn-success mt-3">Add Product</a>
                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
