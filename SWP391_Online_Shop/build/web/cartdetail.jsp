<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
Template: Metronic Frontend Freebie - Responsive HTML Template Based On Twitter Bootstrap 3.3.4
Version: 1.0.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase Premium Metronic Admin Theme: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->

    <!-- Head BEGIN -->
    <head>
        <meta charset="utf-8">
        <title>Shopping cart | Metronic Shop UI</title>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta content="Metronic Shop UI description" name="description">
        <meta content="Metronic Shop UI keywords" name="keywords">
        <meta content="keenthemes" name="author">

        <meta property="og:site_name" content="-CUSTOMER VALUE-">
        <meta property="og:title" content="-CUSTOMER VALUE-">
        <meta property="og:description" content="-CUSTOMER VALUE-">
        <meta property="og:type" content="website">
        <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">

        <link rel="shortcut icon" href="favicon.ico">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- Page level plugin styles START -->
        <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
        <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
        <link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin styles END -->

        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">
        <!-- Theme styles END -->
    </head>
    <!-- Head END -->

    <!-- Body BEGIN -->
    <body class="ecommerce">
        <!-- BEGIN STYLE CUSTOMIZER -->
        <div class="color-panel hidden-sm">
            <div class="color-mode-icons icon-color"></div>
            <div class="color-mode-icons icon-color-close"></div>
            <div class="color-mode">
                <p>THEME COLOR</p>
                <ul class="inline">
                    <li class="color-red current color-default" data-style="red"></li>
                    <li class="color-blue" data-style="blue"></li>
                    <li class="color-green" data-style="green"></li>
                    <li class="color-orange" data-style="orange"></li>
                    <li class="color-gray" data-style="gray"></li>
                    <li class="color-turquoise" data-style="turquoise"></li>
                </ul>
            </div>
        </div>
        <!-- END BEGIN STYLE CUSTOMIZER --> 

        <jsp:include page="header.jsp"></jsp:include>

            <div class="main">
                <div class="container">
                    <!-- BEGIN SIDEBAR & CONTENT -->
                    <div class="row margin-bottom-40">
                        <!-- BEGIN CONTENT -->
                        <div class="col-md-12 col-sm-12">
                            <h1>Shopping cart</h1>
                            <div class="goods-page">
                                <div class="goods-data clearfix">
                                    <div class="table-wrapper-responsive">
                                        <table summary="Shopping cart">
                                            <tr>
                                                <th class="goods-page-image">Name</th>
                                                <th style="padding-left: 50px;" class="goods-page-description">Image</th>
                                                <th style="padding-left: 70px;" class="goods-page-ref-no">Price</th>
                                                <th style="padding-left: 50px;" class="goods-page-quantity">Quantity</th>
                                                <th style="padding-left: 50px;" class="goods-page-total" colspan="2">Total</th>

                                            </tr>
                                        <c:forEach items="${carts}" var="C">
                                            <form action="update-quantity">
                                                <input type="hidden" name="productId" value="${C.value.product.productID}"
                                                       <tr>

                                                    <td class="goods-page-description">
                                                        ${C.value.product.productName}
                                                    </td>
                                                    <td style="padding-left: 50px;" class="goods-page-image">
                                                        <a href="javascript:;"><img src="${C.value.product.url}" alt="Berry Lace Dress"></a>
                                                    </td>
                                                    <td style="padding-left: 70px;" class="goods-page-price">
                                                        <strong><span>$</span>${C.value.product.salePrice}</strong>
                                                    </td>
                                                    <!--                                                    <td style="padding-left: 50px;" class="goods-page-quantity">
                                                                                                            <div class="product-quantity">
                                                                                                                <input onchange="this.form.submit()" name="quantity" id="product-quantity" type="number" value="${C.value.quantity}">
                                                                                                            </div>
                                                                                                        </td>-->
                                                    <td>
                                                        <a class="btn btn-link px-2"
                                                           href="update-quantity?action=dec&id=${C.value.product.productID}">
                                                            <i class="fa fa-minus"></i>
                                                        </a>
                                                        <input id="form1" name="quantity" value="${C.value.quantity}" type="text"
                                                               style="max-width: 3rem; text-align: center"
                                                               class="form-control-sm"
                                                               />
                                                        <a class="btn btn-link px-2"
                                                           href="update-quantity?action=inc&id=${C.value.product.productID}">
                                                            <i class="fa fa-plus"></i>
                                                        </a>
                                                    </td>
                                                    <td style="padding-left: 50px;" class="goods-page-total">
                                                        <strong><span>$</span><fmt:formatNumber pattern="##.#" value="${C.value.product.salePrice*C.value.quantity}"/></strong>
                                                    </td>
                                                    <td style="padding-left: 50px;" class="del-goods-col">
                                                        <a class="del-goods" href="delete-cart?productId=${C.value.product.productID}">&nbsp;</a>
                                                    </td>
                                                </tr>
                                            </form>

                                        </c:forEach> 

                                    </table>
                                </div>

                                <div class="shopping-total">
                                    <ul>        
                                        <li>
                                            <em>Shipping cost</em>
                                            <strong class="price">Free</strong>
                                        </li>
                                        <li class="shopping-total-price">
                                            <em>Total</em>
                                            <strong class="price"><span>$</span><fmt:formatNumber pattern="##.#" value="${totalMoney}"/></strong>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <button class="btn btn-default" type="submit"><a style="color: #FFF" href="productlist">Continue shopping </a><i class="fa fa-shopping-cart"></i></button>
                            <button class="btn btn-primary" type="submit"><a style="color: #FFF" href="checkout">Checkout <i class="fa fa-check"></a></i></button>
                        </div>
                    </div>
                    <!-- END CONTENT -->
                </div>
                <!-- END SIDEBAR & CONTENT -->

                <!-- BEGIN SIMILAR PRODUCTS -->
                <div class="row margin-bottom-40">
                    <div class="col-md-12 col-sm-12">
                        <h2>Most popular products</h2>
                        <div class="owl-carousel owl-carousel4">
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                    <div class="sticker sticker-new"></div>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress2</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress3</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress4</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                    <div class="sticker sticker-sale"></div>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress5</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Berry Lace Dress6</a></h3>
                                    <div class="pi-price">$29.00</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END SIMILAR PRODUCTS -->
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- BEGIN fast view of a product -->
        <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        <div class="product-other-images">
                            <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="assets/pages/img/products/model3.jpg"></a>
                            <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model4.jpg"></a>
                            <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model5.jpg"></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h1>Cool green dress with red bell</h1>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>47.00</strong>
                                <em>$<span>62.00</span></em>
                            </div>
                            <div class="availability">
                                Availability: <strong>In Stock</strong>
                            </div>
                        </div>
                        <div class="description">
                            <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
                                Nostrud duis molestie at dolore.</p>
                        </div>
                        <div class="product-page-options">
                            <div class="pull-left">
                                <label class="control-label">Size:</label>
                                <select class="form-control input-sm">
                                    <option>L</option>
                                    <option>M</option>
                                    <option>XL</option>
                                </select>
                            </div>
                            <div class="pull-left">
                                <label class="control-label">Color:</label>
                                <select class="form-control input-sm">
                                    <option>Red</option>
                                    <option>Blue</option>
                                    <option>Black</option>
                                </select>
                            </div>
                        </div>
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity3" type="text" value="1" readonly class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Add to cart</button>
                            <a href="shop-item.html" class="btn btn-default">More details</a>
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        <!-- END fast view of a product -->

        <!-- Load javascripts at bottom, this will reduce page load time -->
        <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
        <!--[if lt IE 9]>
        <script src="assets/plugins/respond.min.js"></script>  
        <![endif]-->  
        <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
        <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->

        <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
        <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
        <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
        <script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
        <script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
        <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

        <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                Layout.init();
                Layout.initOWL();
                Layout.initTwitter();
                Layout.initImageZoom();
                Layout.initTouchspin();
                Layout.initUniform();
                Layout.initSliderRange();
            });
        </script>
        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>