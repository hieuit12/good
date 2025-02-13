<%-- 
    Document   : header
    Created on : Oct 17, 2024, 10:32:25 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   
        <%
     Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
     Integer rollID = (Integer) session.getAttribute("rollID");

     if (isLoggedIn != null && isLoggedIn) {
         if (rollID != null && rollID == 1) {
        %>
        <!----------------------------------------------------------------------------------------------------------------->
        <header id="header" class="site-header text-black">
<!--            <h1>Welcome, Admin ${account.fullname}!</h1>-->
            <div class="header-top border-bottom py-2">
                <div class="container-lg">
                    <div class="row justify-content-evenly">
                        <div class="col">
                            <ul class="social-links list-unstyled d-flex m-0">
                                <li class="pe-2">
                                    <a href="https://www.facebook.com/LAUD15">
                                        <svg class="facebook" width="20" height="20">
                                        <use xlink:href="#facebook"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="https://www.instagram.com/quankoem_911/">
                                        <svg class="instagram" width="20" height="20">
                                        <use xlink:href="#instagram"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="#">
                                        <svg class="youtube" width="20" height="20">
                                        <use xlink:href="#youtube"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <svg class="pinterest" width="20" height="20">
                                        <use xlink:href="#pinterest"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col d-none d-md-block">
                            <p class="text-center text-black m-0"><strong>Welcome, admin ${account.fullname}!</strong>
                            </p>
                        </div>
                        <div class="col">
                            <ul class="d-flex justify-content-end gap-3 list-unstyled m-0">
                                <li>
                                    <a href="#contact-section">Contact</a>
                                </li>
                                <li>
                                    <a href="showdetail">Cart</a>
                                </li>
                                <li>
                                    <a href="showprofile" class="border-0">Profile</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="header-nav" class="navbar navbar-expand-lg">
                <div class="container-lg">
                    <a class="navbar-brand" href="homeadmin.jsp">
                        <img src="images/main-logo.png" class="logo" alt="logo">
                    </a>
                    <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                            data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <svg class="navbar-icon">
                        <use xlink:href="#navbar-icon"></use>
                        </svg>
                    </button>
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                        <div class="offcanvas-header px-4 pb-0">
                            <a class="navbar-brand ps-3" href="homeadmin.jsp">
                                <img src="images/main-logo.png" class="logo" alt="logo">
                            </a>
                            <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas" aria-label="Close"
                                    data-bs-target="#bdNavbar"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul id="navbar" class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5" href="homeadmin.jsp"
                                       aria-expanded="false">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5 " href="about-us.jsp" 
                                       aria-expanded="false">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="shoplist">Shop</a>
                                </li>

                                <li class="nav-item">
                                    <a href="dashboard.jsp" class="nav-link me-5" >
                                        Admin <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                        <path stroke="currentColor" stroke-linecap="square" stroke-linejoin="round" stroke-width="2" d="M7 19H5a1 1 0 0 1-1-1v-1a3 3 0 0 1 3-3h1m4-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm7.441 1.559a1.907 1.907 0 0 1 0 2.698l-6.069 6.069L10 19l.674-3.372 6.07-6.07a1.907 1.907 0 0 1 2.697 0Z"/>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="user-items ps-0 ps-md-5">
                        <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                            <li class="nav-item dropdown">
                                <a href="#" class="nav-link me-4 active dropdown-toggle border-0" href="#" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <svg class="user" width="24" height="24" style="color: black">
                                    <use xlink:href="#user"></use>
                                    </svg>
                                </a>
                                <ul class="dropdown-menu fw-bold">
                                    <li>
                                        <a href="showprofile" class="dropdown-item">Profile</a>
                                    </li>

                                    <li>
                                        <a href="#" class="dropdown-item">Orders</a>
                                    </li>
                                    <li>
                                        <a href="accountsettings.jsp" class="dropdown-item">Account settings</a>
                                    </li>
                                    <li>
                                        <a href="changepassword.jsp" class="dropdown-item">Change pass</a>
                                    </li>
                                    <li>
                                        <a href="logout" class="dropdown-item">Log out</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="pe-3">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                    <svg class="shopping-cart" width="24" height="24">
                                    <use xlink:href="#shopping-cart"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <form action="shoplist" method="post" class="d-inline">
                                    <input type="search" name="search" class="search-field rounded-2" placeholder="Search" aria-label="Search">
                                    <a href="javascript:void(0);" class="search-item border-0" onclick="this.closest('form').submit();" aria-label="Toggle navigation">
                                        <svg class="search" width="24" height="24">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!----------------------------------------------------------------------------------------------------------------->

        <%
        } else if (rollID != null && rollID == 2) {
        %>
        <!-- Nội dung header dành cho người dùng cấp độ 2 -->
        <header id="header" class="site-header text-black">
            <!--<h1>Welcome, Seller ${account.fullname}!</h1>-->
            <div class="header-top border-bottom py-2">
                <div class="container-lg">
                    <div class="row justify-content-evenly">
                        <div class="col">
                            <ul class="social-links list-unstyled d-flex m-0">
                                <li class="pe-2">
                                    <a href="https://www.facebook.com/LAUD15">
                                        <svg class="facebook" width="20" height="20">
                                        <use xlink:href="#facebook"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="https://www.instagram.com/quankoem_911/">
                                        <svg class="instagram" width="20" height="20">
                                        <use xlink:href="#instagram"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="#">
                                        <svg class="youtube" width="20" height="20">
                                        <use xlink:href="#youtube"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <svg class="pinterest" width="20" height="20">
                                        <use xlink:href="#pinterest"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col d-none d-md-block">
                            <p class="text-center text-black m-0"><strong>Welcome, seller ${account.fullname}!</strong>
                            </p>
                        </div>
                        <div class="col">
                            <ul class="d-flex justify-content-end gap-3 list-unstyled m-0">
                                <li>
                                    <a href="#contact-section">Contact</a>
                                </li>
                                <li>
                                    <a href="showdetail">Cart</a>
                                </li>
                                <li>
                                    <a href="showprofile" class="border-0">Profile</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="header-nav" class="navbar navbar-expand-lg">
                <div class="container-lg">
                    <a class="navbar-brand" href="homeadmin.jsp">
                        <img src="images/main-logo.png" class="logo" alt="logo">
                    </a>
                    <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                            data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <svg class="navbar-icon">
                        <use xlink:href="#navbar-icon"></use>
                        </svg>
                    </button>
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                        <div class="offcanvas-header px-4 pb-0">
                            <a class="navbar-brand ps-3" href="homeadmin.jsp">
                                <img src="images/main-logo.png" class="logo" alt="logo">
                            </a>
                            <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas" aria-label="Close"
                                    data-bs-target="#bdNavbar"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul id="navbar" class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5" href="homeadmin.jsp"
                                       aria-expanded="false">Home</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5 " href="about-us.jsp" 
                                       aria-expanded="false">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="shoplist">Shop</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="listproduct" class="nav-link me-5" >
                                        Seller <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                        <path stroke="currentColor" stroke-linecap="square" stroke-linejoin="round" stroke-width="2" d="M7 19H5a1 1 0 0 1-1-1v-1a3 3 0 0 1 3-3h1m4-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm7.441 1.559a1.907 1.907 0 0 1 0 2.698l-6.069 6.069L10 19l.674-3.372 6.07-6.07a1.907 1.907 0 0 1 2.697 0Z"/>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="user-items ps-0 ps-md-5">
                        <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                            <li class="nav-item dropdown">
                                <a href="#" class="nav-link me-4 active dropdown-toggle border-0" href="#" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <svg class="user" width="24" height="24" style="color: black">
                                    <use xlink:href="#user"></use>
                                    </svg>
                                </a>
                                <ul class="dropdown-menu fw-bold">
                                    <li>
                                        <a href="showprofile" class="dropdown-item">Profile</a>
                                    </li>

                                    <li>
                                        <a href="#" class="dropdown-item">Orders</a>
                                    </li>
                                    <li>
                                        <a href="accountsettings.jsp" class="dropdown-item">Account settings</a>
                                    </li>
                                    <li>
                                        <a href="changepassword.jsp" class="dropdown-item">Change pass</a>
                                    </li>
                                    <li>
                                        <a href="logout" class="dropdown-item">Log out</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="pe-3">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                    <svg class="shopping-cart" width="24" height="24">
                                    <use xlink:href="#shopping-cart"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <form action="shoplist" method="post" class="d-inline">
                                    <input type="search" name="search" class="search-field rounded-2" placeholder="Search" aria-label="Search">
                                    <a href="javascript:void(0);" class="search-item border-0" onclick="this.closest('form').submit();" aria-label="Toggle navigation">
                                        <svg class="search" width="24" height="24">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <%
                } else {
        %>
        <!----------------------------------------------------------------------------------------------------------------->

        <header id="header" class="site-header text-black">
<!--            <h1>Welcome, ${account.fullname}!</h1>-->
            <div class="header-top border-bottom py-2">
                <div class="container-lg">
                    <div class="row justify-content-evenly">
                        <div class="col">
                            <ul class="social-links list-unstyled d-flex m-0">
                                <li class="pe-2">
                                    <a href="https://www.facebook.com/LAUD15">
                                        <svg class="facebook" width="20" height="20">
                                        <use xlink:href="#facebook"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="https://www.instagram.com/quankoem_911/">
                                        <svg class="instagram" width="20" height="20">
                                        <use xlink:href="#instagram"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="#">
                                        <svg class="youtube" width="20" height="20">
                                        <use xlink:href="#youtube"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <svg class="pinterest" width="20" height="20">
                                        <use xlink:href="#pinterest"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col d-none d-md-block">
                            <p class="text-center text-black m-0"><strong>Welcome, user ${account.fullname}!</strong>
                            </p>
                        </div>
                        <div class="col">
                            <ul class="d-flex justify-content-end gap-3 list-unstyled m-0">
                                <li>
                                    <a href="#contact-section">Contact</a>
                                </li>
                                <li>
                                    <a href="#">Cart</a>
                                </li>
                                <li>
                                    <a href="showprofile" class="border-0">Profile</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="header-nav" class="navbar navbar-expand-lg">
                <div class="container-lg">
                    <a class="navbar-brand" href="homecustomer.jsp">
                        <img src="images/main-logo.png" class="logo" alt="logo">
                    </a>
                    <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                            data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <svg class="navbar-icon">
                        <use xlink:href="#navbar-icon"></use>
                        </svg>
                    </button>
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                        <div class="offcanvas-header px-4 pb-0">
                            <a class="navbar-brand ps-3" href="homecustomer.jsp">
                                <img src="images/main-logo.png" class="logo" alt="logo">
                            </a>
                            <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas" aria-label="Close"
                                    data-bs-target="#bdNavbar"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul id="navbar" class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5" href="homecustomer.jsp"
                                       aria-expanded="false">Home</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5 " href="about-us.jsp" 
                                       aria-expanded="false">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="shoplist">Shop</a>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="user-items ps-0 ps-md-5">
                        <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                            <li class="nav-item dropdown">                               
                                <a href="#" class="nav-link me-4 active dropdown-toggle border-0" href="#" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <svg class="user" width="24" height="24" style="color: black">
                                    <use xlink:href="#user"></use>
                                    </svg>
                                </a>
                                <ul class="dropdown-menu fw-bold">
                                    <li>
                                        <a href="showprofile" class="dropdown-item">Profile</a>
                                    </li>

                                    <li>
                                        <a href="#" class="dropdown-item">Orders</a>
                                    </li>
                                    <li>
                                        <a href="accountsettings.jsp" class="dropdown-item">Account settings</a>
                                    </li>
                                    <li>
                                        <a href="changepassword.jsp" class="dropdown-item">Change pass</a>
                                    </li>
                                    <li>
                                        <a href="logout" class="dropdown-item">Log out</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="pe-3">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                    <svg class="shopping-cart" width="24" height="24">
                                    <use xlink:href="#shopping-cart"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <form action="shoplist" method="post" class="d-inline">
                                    <input type="search" name="search" class="search-field rounded-2" placeholder="Search" aria-label="Search">
                                    <a href="javascript:void(0);" class="search-item border-0" onclick="this.closest('form').submit();" aria-label="Toggle navigation">
                                        <svg class="search" width="24" height="24">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!----------------------------------------------------------------------------------------------------------------->

        <%
    }
} else {
        %>
        <!----------------------------------------------------------------------------------------------------------------->

        <header id="header" class="site-header text-black">
<!--            <h1>Welcome to our website!</h1>-->

            <div class="header-top border-bottom py-2">
                <div class="container-lg">
                    <div class="row justify-content-evenly">
                        <div class="col">
                            <ul class="social-links list-unstyled d-flex m-0">
                                <li class="pe-2">
                                    <a href="https://www.facebook.com/LAUD15">
                                        <svg class="facebook" width="20" height="20">
                                        <use xlink:href="#facebook"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="https://www.instagram.com/quankoem_911/">
                                        <svg class="instagram" width="20" height="20">
                                        <use xlink:href="#instagram"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-2">
                                    <a href="#">
                                        <svg class="youtube" width="20" height="20">
                                        <use xlink:href="#youtube"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <svg class="pinterest" width="20" height="20">
                                        <use xlink:href="#pinterest"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col d-none d-md-block">
                            <p class="text-center text-black m-0"><strong>Welcome to Stylish Online Store!</strong>
                            </p>
                        </div>
                        <div class="col">
                            <ul class="d-flex justify-content-end gap-3 list-unstyled m-0">
                                <li>
                                    <a href="#contact-section">Contact</a>
                                </li>
                                <li>
                                    <a href="#">Cart</a>
                                </li>
                                <li>
                                    <a href="login.jsp" class="border-0">Login</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="header-nav" class="navbar navbar-expand-lg">
                <div class="container-lg">
                    <a class="navbar-brand" href="home2.jsp">
                        <img src="images/main-logo.png" class="logo" alt="logo">
                    </a>
                    <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                            data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <svg class="navbar-icon">
                        <use xlink:href="#navbar-icon"></use>
                        </svg>
                    </button>
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                        <div class="offcanvas-header px-4 pb-0">
                            <a class="navbar-brand ps-3" href="home2.jsp">
                                <img src="images/main-logo.png" class="logo" alt="logo">
                            </a>
                            <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas" aria-label="Close"
                                    data-bs-target="#bdNavbar"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul id="navbar" class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                                <li class="nav-item dropdown">
                                    <a class="nav-link me-5" href="home2.jsp"
                                       aria-expanded="false">Home</a>
                                </li>

                               <li class="nav-item dropdown">
                                    <a class="nav-link me-5 " href="about-us.jsp" 
                                       aria-expanded="false">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="shoplist">Shop</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="user-items ps-0 ps-md-5">
                        <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                            <li class="pe-3">
                                <a href="login.jsp" class="border-0">
                                    <svg class="user" width="24" height="24">
                                    <use xlink:href="#user"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="pe-3">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                    <svg class="shopping-cart" width="24" height="24">
                                    <use xlink:href="#shopping-cart"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <form action="shoplist" method="post" class="d-inline">
                                    <input type="search" name="search" class="search-field rounded-2" placeholder="Search" aria-label="Search">
                                    <a href="javascript:void(0);" class="search-item border-0" onclick="this.closest('form').submit();" aria-label="Toggle navigation">
                                        <svg class="search" width="24" height="24">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!----------------------------------------------------------------------------------------------------------------->

        <%
            }
        %>
</html>
