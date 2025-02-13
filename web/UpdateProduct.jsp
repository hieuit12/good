<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Update Product</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Font Awesome for Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            /* Sidebar styling */
            .sidebar {
                background: linear-gradient(135deg, #4A90E2, #87CEFA); /* Blue gradient */
                height: 100vh;
                width: 250px;
                color: #fff;
                border-right: 3px solid #4A90E2;
            }
            .sidebar img {
                width: 150px;
                height: 150px;
                border-radius: 50%;
                object-fit: cover;
            }
            .sidebar p {
                font-size: 20px;
                margin-top: 10px;
                color: white;
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
            /* Form styling */
            .form-container {
                margin-left: 270px;
                padding: 20px;
                background: linear-gradient(135deg, #4A90E2, #87CEFA); /* Blue gradient */
                max-width: 600px;
                width: 100%;
                border-radius: 8px;
                box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
                margin-top: 40px;
                color: #fff;
            }
            h2 {
                text-align: center;
                color: white; /* White text for Add New Product */
                margin-bottom: 20px;
            }
            table {
                width: 100%;
            }
            td {
                padding: 10px;
            }
            input[type="text"],
            select {
                width: 100%;
                padding: 8px;
                margin: 5px 0;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            input[type="submit"] {
                width: 100%;
                background: linear-gradient(135deg, #FF69B4, #FFB6C1); /* Pink gradient */
                color: white; /* White text */
                padding: 10px;
                border: 2px solid #D68A8A; /* Slightly darker pink border */
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
            }
            input[type="submit"]:hover {
                background-color: #e0a1a1; /* Slightly darker pink on hover */
            }
        </style>


    </head>
    <body>

        <!-- Sidebar -->
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
            <div class="col">
                <div class="form-container">
                    <h2>Update Product</h2>
                    <form action="updateproduct" method="POST">
                        <table>
                            <!-- Trường ẩn để gửi ProductID -->
                            <input type="hidden" name="pid" value="${pid}">

                            <tr>
                                <td>Product Name</td>
                                <td><input type="text" name="ProductName" value="${ProductName}" placeholder="Enter product name"></td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td><input type="text" name="Price" value="${Price}" placeholder="Enter price"></td>
                            </tr>
                            <tr>
                                <td>Image URL</td>
                                <td><input type="text" name="Image" value="${Image}" placeholder="Enter image URL"></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td><input type="text" name="describe" value="${describe}" placeholder="Enter product description"></td>
                            </tr>
                            <tr>                
                                <td>Category</td>
                                <td>
                                    <select name="cid">
                                        <option value="1" ${cid == 1 ? 'selected' : ''}>Nike</option>
                                        <option value="2" ${cid == 2 ? 'selected' : ''}>Adidas</option>
                                        <option value="3" ${cid == 3 ? 'selected' : ''}>Puma</option>
                                        <option value="4" ${cid == 4 ? 'selected' : ''}>Vans</option>
                                        <option value="5" ${cid == 5 ? 'selected' : ''}>Converse</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="Update">
                                </td>
                            </tr>
                        </table>
                    </form>

                </div>
            </div>

        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
