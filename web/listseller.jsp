<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Management</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <style>
            /* Sidebar and Link Styles */
            .sidebar {
                background-color: #FFC1C1; /* Light pink */
                min-height: 100vh;
                padding: 20px;
            }
            .nav-link {
                color: white;
                font-weight: bold;
                transition: 0.3s;
            }
            .nav-link:hover {
                background-color: #ff9191;
                color: #fff;
                border-radius: 6px;
            }

            /* Page Title and Table Styles */
            h1 {
                color: #D2691E;
                margin-top: 20px;
            }
            .table-hover tbody tr:hover {
                background-color: #FFF5F5; /* Light pink for hover effect */
            }
            .table thead th {
                background-color: #FFC1C1;
                color: #4B4B4B;
            }

            /* Pagination Styles */
            .pagination .page-item.active .page-link {
                background-color: #D2691E;
                border-color: #D2691E;
                color: white;
            }
            .pagination .page-link {
                color: #D2691E;
            }
            .pagination .page-link:hover {
                background-color: #ff9191;
                color: #fff;
            }

            /* Container Padding */
            .content-container {
                padding: 20px;
            }
        </style>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are you sure you want to delete seller ID = " + id + "?")) {
                    window.location = "delete-account?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <div class="d-flex">
            <div>
                <%@include file="sidebaradmin.jsp" %>
            </div>
            <div class="container flex-grow-1" style="padding: 30px;">
                <h2 class="text-center">Seller Management</h2>
                <div class="text-right mb-3">
                    <a href="addseller" class="btn btn-custom">Add New Seller</a>
                </div>
                <div class="table-container">
                    <a href="listseller" style="text-decoration: none; color: #58abff">
                        <h3 class="text-center mb-4">List of Sellers</h3>
                    </a>
                    <table class="table table-hover table-bordered">
                        <thead>
                            <tr>
                                <th>UserID</th>
                                <th>Username</th>
                                <th>Fullname</th>
                                <th>Email</th>
                                <th>Gender</th>
                                <th>Address</th>
                                <th>Role ID</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${requestScope.list == null}">
                                <tr>
                                    <td colspan="8" class="text-center"><strong>No sellers found</strong></td>
                                </tr>
                            </c:if>
                            <c:if test="${list != null}">
                                <c:forEach items="${list}" var="c">
                                    <tr>
                                        <td>${c.getUserID()}</td>
                                        <td>${c.getUsername()}</td>
                                        <td>${c.getFullname()}</td>
                                        <td>${c.getEmail()}</td>
                                        <td>${c.getGender()}</td>
                                        <td>${c.getAddress()}</td>
                                        <td>${c.getRollID()}</td>
                                        <td>
                                            <a href="deleteseller?id=${c.getUserID()}" onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
