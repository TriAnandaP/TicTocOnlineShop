<%-- 
    Document   : productdetail
    Created on : Oct 17, 2017, 10:32:57 PM
    Author     : Tri Ananda Putra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Toc Online Shop: Product Detail</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"/>
    </head>
    <body>
    <center>
        <h1>Tic Toc Online Shop</h1>
        <h4 style="margin-bottom: 30px">The Biggest E-Commerce in Indonesia</h4>
    </center>
    <h5>Detail ${product.nameProduct}</h5>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="thead-inverse">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${product.idProduct}</td>
                    <td>${product.nameProduct}</td>
                    <td>Rp ${product.price}</td>
                    <td><a href="addtochart">Add to Cart</a></td>
                </tr>
            </tbody>
        </table>
        <a type="btn" class="btn btn-primary" href="/TicToc/homepage">Back</a>
    </div>
</body>
</html>
