<%-- 
    Document   : product
    Created on : Oct 17, 2017, 10:15:08 PM
    Author     : Tri Ananda Putra
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Tic Toc Shop</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default rounded borders and increase the bottom margin */ 
            .navbar {
                margin-bottom: 50px;
                border-radius: 0;
            }

            /* Remove the jumbotron's default bottom margin */ 
            .jumbotron {
                margin-bottom: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }
        </style>
    </head>
    <body>



        <div class="container">
            <!--<div style="height: 170px" class="jumbotron">
                <div class="container text-center">
                    <h1 style="margin-top: 1px">Welcome to the TicToc Shop</h1>      
                    <p>The biggest E-Commerce of Indonesia</p>
                </div>
            </div> -->

            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="container text-center" style="margin-top: 20px;">
                        <h1 style="margin-top: 1px">Welcome to the TicToc Shop</h1>      
                        <p>The Biggest E-Commerce of Indonesia</p>
                    </div>
                    <div class="item active">
                        <img src="http://purplelynx.com/wp-content/uploads/2015/09/shop.png" alt="Los Angeles" style="width:50%; height: 300px; margin-left: 300px">
                        <div class="carousel-caption">
                            <!-- <h3>Los Angeles</h3>
                             <p>LA is always so much fun!</p> -->
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://www.katowork.com/wp-content/uploads/2015/10/Shopping_girls3.png" alt="Chicago" style="width:40%; height: 300px; margin-left: 100px;">
                        <div class="carousel-caption">
                            <!-- <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p> -->
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://images.samsung.com/is/image/samsung/p5/id/smartphones/phones-for-every-need-001-pcv.png?$ORIGIN_PNG$" alt="New York" style="width:40%; height: 300px; margin-left: 200px;">
                        <div class="carousel-caption">
                            <!--<h3>New York</h3>
                            <p>We love the Big Apple!</p> -->
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="https://i.pinimg.com/originals/74/67/86/74678629af7b85f671e05f38bd0ff1b3.png" alt="New York" style="width:40%; height: 300px; margin-left: 200px;">
                        <div class="carousel-caption">
                            <!--<h3>New York</h3>
                            <p>We love the Big Apple!</p> -->
                        </div>

                    </div
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">TicToc.</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                        <li><a href="valueofchart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart ${chart.size()}</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">    
            <div class="row">
                <c:forEach items="${product}" var="p">
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><a style="color: white" href="productdetail/${p.idProduct}">${p.nameProduct}</a></div>
                            <div class="panel-body"><img src="" class="img-responsive" style="width:100%" alt="Image"></div>
                            <div class="panel-footer" style="margin-bottom: 20px">Rp ${p.price}</div>
                        </div>
                    </div>    
                </c:forEach>
            </div>
        </div><br><br>

        <footer class="container-fluid text-center">
            <p>TicToc Shop Copyright</p> 
            <form class="form-inline">Get deals:
                <input type="email" class="form-control" size="50" placeholder="Email Address">
                <button type="button" class="btn btn-danger">Sign Up</button>
            </form>
        </footer>
    </body>
</html>