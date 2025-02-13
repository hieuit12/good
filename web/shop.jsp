
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <title>Stylish - Shoes Online Store HTML Template</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="TemplatesJungle">
        <meta name="keywords" content="Online Store">
        <meta name="description" content="Stylish - Shoes Online Store HTML Template">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/vendor.css">
        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&amp;family=Playfair+Display:ital,wght@0,900;1,900&amp;family=Source+Sans+Pro:wght@400;600;700;900&amp;display=swap"
            rel="stylesheet">
    </head>

    <body>
        <style>
            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .pagination a {
                color: black;
                padding: 8px 16px;
                text-decoration: none;
                border: 1px solid #ddd;
                margin: 0 4px;
            }

            .pagination a.active {
                background-color: #ff0000;
                color: white;
                border: 1px solid #ff0000;
            }

            .pagination a:hover {
                background-color: #ddd;
            }
            .pinkbg{
                background-color: #FFC1C1;
                padding: 50px 0;
            }


        </style>



        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol xmlns="http://www.w3.org/2000/svg" id="shopping-carriage" viewBox="0 0 24 24" fill="none">
        <path
            d="M5 22H19C20.103 22 21 21.103 21 20V9C21 8.73478 20.8946 8.48043 20.7071 8.29289C20.5196 8.10536 20.2652 8 20 8H17V7C17 4.243 14.757 2 12 2C9.243 2 7 4.243 7 7V8H4C3.73478 8 3.48043 8.10536 3.29289 8.29289C3.10536 8.48043 3 8.73478 3 9V20C3 21.103 3.897 22 5 22ZM9 7C9 5.346 10.346 4 12 4C13.654 4 15 5.346 15 7V8H9V7ZM5 10H7V12H9V10H15V12H17V10H19L19.002 20H5V10Z"
            fill="black" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quick-view" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396l1.414-1.414l-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8s3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6s-6-2.691-6-6s2.691-6 6-6z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="shopping-cart" viewBox="0 0 24 24" fill="none">
        <path
            d="M21 4H2V6H4.3L7.582 15.025C7.79362 15.6029 8.1773 16.1021 8.68134 16.4552C9.18539 16.8083 9.78556 16.9985 10.401 17H19V15H10.401C9.982 15 9.604 14.735 9.461 14.342L8.973 13H18.246C19.136 13 19.926 12.402 20.169 11.549L21.962 5.275C22.0039 5.12615 22.0109 4.96962 21.9823 4.81763C21.9537 4.66565 21.8904 4.52234 21.7973 4.39889C21.7041 4.27544 21.5837 4.1752 21.4454 4.106C21.3071 4.0368 21.1546 4.00053 21 4ZM18.246 11H8.246L6.428 6H19.675L18.246 11Z"
            fill="black" />
        <path
            d="M10.5 21C11.3284 21 12 20.3284 12 19.5C12 18.6716 11.3284 18 10.5 18C9.67157 18 9 18.6716 9 19.5C9 20.3284 9.67157 21 10.5 21Z"
            fill="black" />
        <path
            d="M16.5 21C17.3284 21 18 20.3284 18 19.5C18 18.6716 17.3284 18 16.5 18C15.6716 18 15 18.6716 15 19.5C15 20.3284 15.6716 21 16.5 21Z"
            fill="black" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="nav-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 16 16">
        <path
            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="navbar-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 12.998h-6v6h-2v-6H5v-2h6v-6h2v6h6z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 12.998H5v-2h14z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="dropdown" viewBox="0 0 24 24">
        <path fill="currentColor" d="m7 10l5 5l5-5H7Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M12 2a5 5 0 1 0 5 5a5 5 0 0 0-5-5zm0 8a3 3 0 1 1 3-3a3 3 0 0 1-3 3zm9 11v-1a7 7 0 0 0-7-7h-4a7 7 0 0 0-7 7v1h2v-1a5 5 0 0 1 5-5h4a5 5 0 0 1 5 5v1z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M13.3 17.275q-.3-.3-.288-.725t.313-.725L16.15 13H5q-.425 0-.713-.288T4 12q0-.425.288-.713T5 11h11.15L13.3 8.15q-.3-.3-.3-.713t.3-.712q.3-.3.713-.3t.712.3L19.3 11.3q.15.15.213.325t.062.375q0 .2-.063.375t-.212.325l-4.6 4.6q-.275.275-.687.275t-.713-.3Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M9.198 21.5h4v-8.01h3.604l.396-3.98h-4V7.5a1 1 0 0 1 1-1h3v-4h-3a5 5 0 0 0-5 5v2.01h-2l-.396 3.98h2.396v8.01Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewBox="0 0 512 512">
        <path fill="currentColor" d="M496 109.5a201.8 201.8 0 0 1-56.55 15.3a97.51 97.51 0 0 0 43.33-53.6a197.74 197.74 0 0 1-62.56 23.5A99.14 99.14 0 0 0 348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 0 0 2.54 22.1a280.7 280.7 0 0 1-203-101.3A95.69 95.69 0 0 0 36 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0 1 35.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 0 1-25.94 3.4a94.38 94.38 0 0 1-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0 1 39.5 405.6a203 203 0 0 1-23.5-1.4A278.68 278.68 0 0 0 166.74 448c181.36 0 280.44-147.7 280.44-275.8c0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 0 0 496 109.5Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M29.41 9.26a3.5 3.5 0 0 0-2.47-2.47C24.76 6.2 16 6.2 16 6.2s-8.76 0-10.94.59a3.5 3.5 0 0 0-2.47 2.47A36.13 36.13 0 0 0 2 16a36.13 36.13 0 0 0 .59 6.74a3.5 3.5 0 0 0 2.47 2.47c2.18.59 10.94.59 10.94.59s8.76 0 10.94-.59a3.5 3.5 0 0 0 2.47-2.47A36.13 36.13 0 0 0 30 16a36.13 36.13 0 0 0-.59-6.74ZM13.2 20.2v-8.4l7.27 4.2Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewBox="0 0 256 256">
        <path fill="currentColor"
              d="M128 80a48 48 0 1 0 48 48a48.05 48.05 0 0 0-48-48Zm0 80a32 32 0 1 1 32-32a32 32 0 0 1-32 32Zm48-136H80a56.06 56.06 0 0 0-56 56v96a56.06 56.06 0 0 0 56 56h96a56.06 56.06 0 0 0 56-56V80a56.06 56.06 0 0 0-56-56Zm40 152a40 40 0 0 1-40 40H80a40 40 0 0 1-40-40V80a40 40 0 0 1 40-40h96a40 40 0 0 1 40 40ZM192 76a12 12 0 1 1-12-12a12 12 0 0 1 12 12Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="pinterest" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M9.04 21.54c.96.29 1.93.46 2.96.46a10 10 0 0 0 10-10A10 10 0 0 0 12 2A10 10 0 0 0 2 12c0 4.25 2.67 7.9 6.44 9.34c-.09-.78-.18-2.07 0-2.96l1.15-4.94s-.29-.58-.29-1.5c0-1.38.86-2.41 1.84-2.41c.86 0 1.26.63 1.26 1.44c0 .86-.57 2.09-.86 3.27c-.17.98.52 1.84 1.52 1.84c1.78 0 3.16-1.9 3.16-4.58c0-2.4-1.72-4.04-4.19-4.04c-2.82 0-4.48 2.1-4.48 4.31c0 .86.28 1.73.74 2.3c.09.06.09.14.06.29l-.29 1.09c0 .17-.11.23-.28.11c-1.28-.56-2.02-2.38-2.02-3.85c0-3.16 2.24-6.03 6.56-6.03c3.44 0 6.12 2.47 6.12 5.75c0 3.44-2.13 6.2-5.18 6.2c-.97 0-1.92-.52-2.26-1.13l-.67 2.37c-.23.86-.86 2.01-1.29 2.7v-.03Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396l1.414-1.414l-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8s3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6s-6-2.691-6-6s2.691-6 6-6z" />
    </symbol>
    </svg>
    <!-- Loader 4 -->

    <div class="preloader" style="position: fixed;top:0;left:0;width: 100%;height: 100%;background-color: #fff;display: flex;align-items: center;justify-content: center;z-index: 9999;">
        <svg version="1.1" id="L4" width="100" height="100" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             viewBox="0 0 50 100" enable-background="new 0 0 0 0" xml:space="preserve">
        <circle fill="#111" stroke="none" cx="6" cy="50" r="6">
        <animate
            attributeName="opacity"
            dur="1s"
            values="0;1;0"
            repeatCount="indefinite"
            begin="0.1"/>    
        </circle>
        <circle fill="#111" stroke="none" cx="26" cy="50" r="6">
        <animate
            attributeName="opacity"
            dur="1s"
            values="0;1;0"
            repeatCount="indefinite" 
            begin="0.2"/>       
        </circle>
        <circle fill="#111" stroke="none" cx="46" cy="50" r="6">
        <animate
            attributeName="opacity"
            dur="1s"
            values="0;1;0"
            repeatCount="indefinite" 
            begin="0.3"/>     
        </circle>
        </svg>
    </div>



    <!----------------------------------------------- quick view ------------------------------------------------------------>

    <div class="modal fade" id="modaltoggle" aria-hidden="true" tabindex="-1">
        <div class="modal-dialog modal-fullscreen-md-down modal-md modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="col-lg-12 col-md-12 me-3">
                        <div class="image-holder">
                            <img src="images/summary-item1.jpg" alt="Shoes">
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="summary">
                            <div class="summary-content fs-6">
                                <div class="product-header d-flex justify-content-between mt-4">
                                    <h3 class="display-7">Running Shoes For Men</h3>
                                    <div class="modal-close-btn">
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                        </button>
                                    </div>
                                </div>
                                <span class="product-price fs-3">$99</span>
                                <div class="product-details">
                                    <p class="fs-7">Buy good shoes and a good mattress, because when you're not in one you're in the
                                        other. With four pairs of shoes, I can travel the world.</p>
                                </div>
                                <ul class="select">
                                    <li>
                                        <strong>Colour Shown:</strong> Red, White, Black
                                    </li>
                                    <li>
                                        <strong>Style:</strong> SM3018-100
                                    </li>
                                </ul>
                                <div class="variations-form shopify-cart">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="quantity d-flex pb-4">
                                                <div
                                                    class="qty-number align-top qty-number-plus d-flex justify-content-center align-items-center text-center">
                                                    <span class="increase-qty plus">
                                                        <svg class="plus">
                                                        <use xlink:href="#plus"></use>
                                                        </svg>
                                                    </span>
                                                </div>
                                                <input type="number" id="quantity_001" class="input-text text-center" step="1" min="1"
                                                       name="quantity" value="1" title="Qty">
                                                <div
                                                    class="qty-number qty-number-minus d-flex justify-content-center align-items-center text-center">
                                                    <span class="increase-qty minus">
                                                        <svg class="minus">
                                                        <use xlink:href="#minus"></use>
                                                        </svg>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <a rel="nofollow" data-no-instant="" href="#" class="out-stock button">Out of stock</a>
                                            <button type="submit" class="btn btn-medium btn-black hvr-sweep-to-right">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- variations-form -->
                                <div class="categories d-flex flex-wrap pt-3">
                                    <strong class="pe-2">Categories:</strong>
                                    <a href="#" title="categories">Clothing,</a>
                                    <a href="#" title="categories">Men's Clothes,</a>
                                    <a href="#" title="categories">Tops & T-Shirts</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----------------------------------------------- / quick view ------------------------------------------------------------>


    <!---------------------------------------------------------- cart view ---------------------------------------------------->
    <div class="modal fade" id="modallong" tabindex="-1" aria-modal="true" role="dialog">
        <div class="modal-dialog modal-fullscreen-md-down modal-md modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title fs-5">Cart</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="shopping-cart">
                        <div class="shopping-cart-content">
                            
                            
                            <div class="mini-cart cart-list p-0 mt-3">
                                <div class="mini-cart-item d-flex border-bottom pb-3">
                                    <div class="col-lg-2 col-md-3 col-sm-2 me-4">
                                        <a href="#" title="product-image">
                                            <img src="images/single-product-thumb1.jpg" class="img-fluid" alt="single-product-item">
                                        </a>
                                    </div>
                                    <div class="col-lg-9 col-md-8 col-sm-8">
                                        <div class="product-header d-flex justify-content-between align-items-center mb-3">
                                            <h4 class="product-title fs-6 me-5">Sport Shoes For Men</h4>
                                            <a href="#" class="remove" aria-label="Remove this item" data-product_id="11913"
                                               data-cart_item_key="abc" data-product_sku="">
                                                <svg class="close">
                                                <use xlink:href="#close"></use>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="quantity-price d-flex justify-content-between align-items-center">
                                            <div class="input-group product-qty">
                                                <button type="button"
                                                        class="quantity-left-minus btn btn-light rounded-0 rounded-start btn-number"
                                                        data-type="minus">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#minus"></use>
                                                    </svg>
                                                </button>
                                                <input type="text" name="quantity" class="form-control input-number quantity" value="1">
                                                <button type="button" class="quantity-right-plus btn btn-light rounded-0 rounded-end btn-number"
                                                        data-type="plus">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#plus"></use>
                                                    </svg>
                                                </button>
                                            </div>
                                            <div class="price-code">
                                                <span class="product-price fs-6">$99</span>
                                            </div>
                                        </div>
                                        <!-- quantity-price -->
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            <div class="mini-cart cart-list p-0 mt-3">
                                <div class="mini-cart-item d-flex border-bottom pb-3">
                                    <div class="col-lg-2 col-md-3 col-sm-2 me-4">
                                        <a href="#" title="product-image">
                                            <img src="images/single-product-thumb2.jpg" class="img-fluid" alt="single-product-item">
                                        </a>
                                    </div>
                                    <div class="col-lg-9 col-md-8 col-sm-8">
                                        <div class="product-header d-flex justify-content-between align-items-center mb-3">
                                            <h4 class="product-title fs-6 me-5">Brand Shoes For Men</h4>
                                            <a href="#" class="remove" aria-label="Remove this item" data-product_id="11913"
                                               data-cart_item_key="abc" data-product_sku="">
                                                <svg class="close">
                                                <use xlink:href="#close"></use>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="quantity-price d-flex justify-content-between align-items-center">
                                            <div class="input-group product-qty">
                                                <button type="button"
                                                        class="quantity-left-minus btn btn-light rounded-0 rounded-start btn-number"
                                                        data-type="minus">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#minus"></use>
                                                    </svg>
                                                </button>
                                                <input type="text" name="quantity" class="form-control input-number quantity" value="1">
                                                <button type="button" class="quantity-right-plus btn btn-light rounded-0 rounded-end btn-number"
                                                        data-type="plus">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#plus"></use>
                                                    </svg>
                                                </button>
                                            </div>
                                            <div class="price-code">
                                                <span class="product-price fs-6">$99</span>
                                            </div>
                                        </div>
                                        <!-- quantity-price -->
                                    </div>
                                </div>
                            </div>
                            <!-- cart-list -->
                            <div class="mini-cart-total d-flex justify-content-between py-4">
                                <span class="fs-6">Subtotal:</span>
                                <span class="special-price-code">
                                    <span class="price-amount amount fs-6" style="opacity: 1;">
                                        <bdi>
                                            <span class="price-currency-symbol">$</span>198.00 </bdi>
                                    </span>
                                </span>
                            </div>
                            <div class="modal-footer my-4 justify-content-center">
                                <a href="showdetail" class="btn btn-red hvr-sweep-to-right dark-sweep">View Cart</a> 
                                <a href="addorder" class="btn btn-outline-gray hvr-sweep-to-right dark-sweep">Add Order</a> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!---------------------------------------------------------- /cart view ---------------------------------------------------->

    <!----------------------------------------------------------------------------------------------------------------->
    <%@ include file="header.jsp" %>

    <!----------------------------------------------------------------------------------------------------------------->
    <section class="pinkbg hero-section position-relative bg-gray padding-medium">
        <div class="hero-content">
            <div class="container">
                <div class="row">
                    <div class="text-center">
                        <h1 class="display-2 shop-title">Stylish Online Store</h1>
                        <div class="breadcrumbs">

                            <span class="welcome-message">Welcome to Stylish Online Store!</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <div class="shopify-grid py-2 my-2 py-md-5 my-md-5">
        <div class="container-lg">
            <div class="row">
                    <main class="col-lg-10 col-md-6 col-sm-12">


                        <form action="shoplist">
                            <div class="filter-shop d-flex justify-content-between">
                                <div class="showing-product">
                                    <p>Showing 1–${listP.size()} of ${listP.size()} results</p>
                                    <!--                                phần này đang in nhầm-->
                                </div>
                                <div class="sort-by pb-3">
                                    <select id="input-sort" name="sort" class="form-control" onchange="form.submit()">
                                        <option value="" ${param.sort == '' ? 'selected' : ''}>All Products</option>
                                        <option value="name-asc" ${param.sort == 'name-asc' ? 'selected' : ''}>Name (A - Z)</option>
                                        <option value="name-desc" ${param.sort == 'name-desc' ? 'selected' : ''}>Name (Z - A)</option>
                                        <option value="price-asc" ${param.sort == 'price-asc' ? 'selected' : ''}>Price (Low - High)</option>
                                        <option value="price-desc" ${param.sort == 'price-desc' ? 'selected' : ''}>Price (High - Low)</option>
                                    </select>
                                </div>
                            </div>
                            <c:set var="list" value="${sessionScope.listP}"/>

                            <div class="product-content product-store d-flex justify-content-between flex-wrap">
                                <c:forEach var="p" items="${listP}">
                                    <!-- Hiển thị sản phẩm -->
                                    <div class="col-lg-4 col-md-12 col-sm-12 mb-4 pe-3">
                                        <div class="product-card position-relative">
                                            <div class="card-img">
                                                <img src="${p.image}" alt="${p.productName}" class="product-image img-fluid">
                                                <!-- Các nút tương tác -->
                                                <form action="adddetail">
                                                    <div class="cart-concern position-absolute d-flex justify-content-center">
                                                        <div class="cart-button d-flex gap-2 justify-content-center align-items-center">

                                                            <button type="submit" class="btn btn-light" value="${p.productID}" name="listBuy">
                                                                <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4h1.5L8 16m0 0h8m-8 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm8 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm.75-3H7.5M11 7H6.312M17 4v6m-3-3h6"/>
                                                                </svg>
                                                            </button>

                                                            <button type="submit" class="btn btn-light">
                                                                <svg class="quick-view">
                                                                <use xlink:href="#quick-view"></use>
                                                                </svg>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                            <div class="card-detail d-flex justify-content-between align-items-center mt-3">
                                                <h3 class="card-title fs-6 fw-normal m-0">
                                                    <a href="single-product.jsp">${p.productName}</a>
                                                </h3>
                                                <span class="card-price fw-bold">$${p.price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <!-- Phân trang -->
                            <div class="pagination">
                                <!-- Nút chuyển về đầu trang -->
                                <a href="?page=${firstPage}&sort=${param.sort}&price_min=${param.price_min}&price_max=${param.price_max}">FirstPage</a>


                                <c:if test="${currentPage > 1}">
                                    <a href="?page=${currentPage - 1}&sort=${param.sort}&price_min=${param.price_min}&price_max=${param.price_max}">&laquo; Previous</a>
                                </c:if>

                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <a href="?page=${i}&sort=${param.sort}&price_min=${param.price_min}&price_max=${param.price_max}" class="${i == currentPage ? 'active' : ''}">${i}</a>
                                </c:forEach>

                                <c:if test="${currentPage < totalPages}">
                                    <a href="?page=${currentPage + 1}&sort=${param.sort}&price_min=${param.price_min}&price_max=${param.price_max}">Next &raquo;</a>
                                </c:if>

                                <!-- Nút chuyển về cuối trang -->
                                <a href="?page=${lastPage}&sort=${param.sort}&price_min=${param.price_min}&price_max=${param.price_max}">LastPage</a>
                            </div>



                        </form>
                    </main>



                <aside class="col-lg-2 col-md-6 col-sm-12">
                    <div class="sidebar">
                        <div class="widget-menu">
                            <div class="widget-search-bar position-relative">
                                <form action="shoplist" method="post" class="d-flex">
                                    <input type="search" name="search" class="search-field rounded-2" placeholder="Search" value="${param.search}" aria-label="Search">
                                    <div class="search-icon position-absolute end-0">
                                        <svg class="search">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="widget-product-brands pt-3">
                            <h5 class="widget-title text-decoration-underline">Brands</h5>
                            <ul class="product-tags sidebar-list list-unstyled text-hover">
                                <li class="tags-item">
                                    <a href="shoplist?category=2&sort=${param.sort}">Adidas</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?category=5&sort=${param.sort}">Converse</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?category=1&sort=${param.sort}">Nike</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?category=3&sort=${param.sort}">Puma</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?category=4&sort=${param.sort}">Vans</a>
                                </li>
                            </ul>
                        </div>
                        <div class="widget-price-filter pt-3">
                            <h5 class="widget-titlewidget-title text-decoration-underline">Filter By Price</h5>
                            <ul class="product-tags sidebar-list list-unstyled text-hover border-bottom pb-3">
                                <li class="tags-item">
                                    <a href="shoplist?price_max=119&sort=${param.sort}&price_min=${param.price_min}">Less than $119</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=120&price_max=139&sort=${param.sort}&price_min=${param.price_min}">$120 - $139</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=140&price_max=159&sort=${param.sort}&price_min=${param.price_min}">$140 - $159</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=160&price_max=179&sort=${param.sort}&price_min=${param.price_min}">$160 - $179</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=180&price_max=209&sort=${param.sort}&price_min=${param.price_min}">$180 - $209</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=210&price_max=239&sort=${param.sort}&price_min=${param.price_min}">$210 - $239</a>
                                </li>
                                <li class="tags-item">
                                    <a href="shoplist?price_min=240&price_max=299&sort=${param.sort}&price_min=${param.price_min}">$240 - $299</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/script.js"></script>
</body>


<!-- Mirrored from demo.templatesjungle.com/stylish/shop.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 16 Oct 2024 14:00:48 GMT -->
</html>
