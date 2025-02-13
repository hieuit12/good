<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            /* Sidebar styling */
            .sidebar {
                height: 100vh;
                width: 250px;
                background-color: #FFC1C1;
                color: white;
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
                color: white;
                padding: 10px 15px;
                border-radius: 4px;
                font-size: 16px;
            }
            .sidebar .nav-link:hover {
                background-color: #ccc;
                color: #17a2b8;
            }
            /* Main content styling */
            .content-container {
                margin-left: 270px;
                padding: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                padding: 10px;
                text-align: center;
                border: 1px solid #ddd;
            }
            th {
                background-color: #FFC1C1;
                color: white;
            }
            td img {
                width: 50px;
                height: 50px;
                object-fit: cover;
                border-radius: 4px;
            }
            .btn-primary, .btn-danger {
                color: white;
                font-weight: bold;
                border-radius: 4px;
            }
            .btn-primary {
                background-color: #28a745;
                border-color: #28a745;
            }
            .btn-primary:hover {
                background-color: #218838;
            }
            .btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }
            .btn-danger:hover {
                background-color: #c82333;
            }
            .add-product-link {
                display: block;
                width: fit-content;
                padding: 10px 15px;
                background-color: #FFC1C1;
                color: white;
                font-weight: bold;
                border-radius: 4px;
                text-decoration: none;
                margin-top: 15px;
            }
            .add-product-link:hover {
                background-color: #e0a1a1;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="d-flex flex-column flex-shrink-0 p-3 sidebar">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img src="images/admin.png" alt="alt"/>
                        <p>Hello, ${sessionScope.account.username}</p>
                    </div>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li>
                            <a href="homeadmin.jsp" class="nav-link d-flex align-items-center sidebar-link">
                                <i class="fa-solid fa-house pe-3" style="margin-right: 10px"></i>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="dashboard.jsp" class="nav-link d-flex align-items-center sidebar-link">
                                <i class="fa-solid fa-chart-simple" style="margin-right: 10px"></i>
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="listorder.jsp" class="nav-link d-flex align-items-center sidebar-link">
                                <i class="fa-solid fa-cart-plus pe-3" style="margin-right: 10px"></i>                            
                                Orders
                            </a>
                        </li>
                        <li>
                            <a href="listproduct.jsp" class="nav-link d-flex align-items-center sidebar-link">
                                <i class="fa-brands fa-product-hunt pe-3" style="margin-right: 10px"></i>
                                Products
                            </a>
                        </li>
                        <li>
                            <a href="listuser.jsp" class="nav-link d-flex align-items-center sidebar-link">
                                <i class="fa-solid fa-user pe-3" style="margin-right: 10px"></i>
                                Customers
                            </a>
                        </li>
                    </ul>
                    <hr>
                </div>

                <!-- Main Content -->
                <div class="content-container">
                    <h2>List of Categories</h2>
                    <!-- Product Table -->
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
                                    <td><img src="${p.getImage()}" alt="Product Image"/></td>
                                    <td>${p.getDescribe()}</td>
                                    <td>${p.getCategoryID()}</td>
                                    <td>
                                        <a class="btn btn-primary btn-sm" href="updateproduct?pid=${p.getProductID()}">UPDATE</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-danger btn-sm" href="deleteproduct?pid=${p.getProductID()}" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a> 
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <a href="AddProduct.jsp" class="add-product-link">Add Product</a>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
