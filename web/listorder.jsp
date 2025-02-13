<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - List Orders</title>
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
    </head>
    <body>
        <c:set var="orders" value="${requestScope.list}"></c:set>
        <div class="d-flex">
            <div>
                <%@include file="sidebaradmin.jsp" %>
            </div>
            <div class="container content-container">
                <a href="list-order" style="text-decoration: none; color: inherit">
                    <h1>List Orders</h1>
                </a>
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th class="col-1">OrderID</th>
                            <th class="col-1">Name</th>
                            <th class="col-1">Phone</th>
                            <th class="col-3">Address</th>
                            <th class="col-1">Total Money</th>
                            <th class="col-3">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${orders == null}">
                            <tr>
                                <td colspan="6" class="text-center"><h2>No orders were found</h2></td>
                            </tr>
                        </c:if>
                        <c:if test="${orders != null}">
                            <c:forEach var="order" items="${orders}">
                                <tr id="table-${order.orderid}">
                                    <td>${order.orderid}</td>
                                    <td>${order.name}</td>
                                    <td>${order.phone}</td>
                                    <td>${order.address}</td>
                                    <td>$${order.totalmoney}</td>
                                    <td>
                                        <a href="view-order?id=${order.orderid}" class="btn btn-info mr-2">View</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </tbody>
                </table>
                <c:if test="${ orders != null}">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-end">
                            <li class="page-item ${requestScope.page == 1 ? "disabled" :""}">
                                <a class="page-link" href="list-order?page=${requestScope.page-1}">Previous</a>
                            </li>
                            <c:forEach begin="1" end="${requestScope.endPage}" var="i">
                                <li class="page-item ${requestScope.page == i ?"active" :""}">
                                    <a href="list-order?page=${i}" class="page-link">${i}</a>
                                </li>
                            </c:forEach>
                            <li class="page-item ${requestScope.page == requestScope.endPage ? "disabled" :""}">
                                <a class="page-link" href="list-order?page=${requestScope.page+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </c:if>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
