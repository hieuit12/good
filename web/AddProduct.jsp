<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
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
    /* Form styling */
    .form-container {
        margin-left: 270px;
        padding: 20px;
        background-color: #FFC1C1; /* Matching background color */
        max-width: 600px;
        width: 100%;
        border-radius: 8px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        margin-top: 40px;
        color: #333; /* Text color for better contrast */
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
        background-color: #FFC1C1; /* Pink background to match sidebar */
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
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="sidebar d-flex flex-column flex-shrink-0 p-3">
                <div class="d-flex flex-column justify-content-center align-items-center">
                    <img src="images/admin.png" alt="Profile Image" />
                    <p>Hello, ${sessionScope.account.username}</p>
                </div>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li>
                        <a href="homeadmin.jsp" class="nav-link d-flex align-items-center sidebar-link">
                            <i class="fa-solid fa-house pe-3" style="margin-right: 10px"></i>Home
                        </a>
                    </li>
                    <li>
                        <a href="dashboard.jsp" class="nav-link d-flex align-items-center sidebar-link">
                            <i class="fa-solid fa-chart-simple" style="margin-right: 10px"></i>Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="listorder.jsp" class="nav-link d-flex align-items-center sidebar-link">
                            <i class="fa-solid fa-cart-plus pe-3" style="margin-right: 10px"></i>Orders
                        </a>
                    </li>
                    <li>
                        <a href="listproduct.jsp" class="nav-link d-flex align-items-center sidebar-link">
                            <i class="fa-brands fa-product-hunt pe-3" style="margin-right: 10px"></i>Products
                        </a>
                    </li>
                    <li>
                        <a href="listuser.jsp" class="nav-link d-flex align-items-center sidebar-link">
                            <i class="fa-solid fa-user pe-3" style="margin-right: 10px"></i>Customers
                        </a>
                    </li>
                </ul>
                <hr>
            </div>

            <!-- Main Content -->
            <div class="col">
                <div class="form-container">
                    <h2>Add New Product</h2>
                    <form action="addproduct" method="POST">
                        <table>
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
                                    <input type="submit" value="Add Product">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
