<%-- 
    Document   : cart
    Created on : Oct 18, 2017, 8:19:50 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Toc Online Shop: List Cart</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"/>
    </head>
    <body>
    <center>
        <h1>Tic Toc Online Shop</h1>
        <h4 style="margin-bottom: 30px">The Biggest E-Commerce in Indonesia</h4>
    </center>
    <h5>List of Cart</h5>
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
                <c:forEach items="${chart}" var="c">
                    <tr>
                        <td>${c.idProduct}</td>
                        <td>${c.nameProduct}</td>
                        <td>Rp ${c.price}</td>
                        <td><a href="valueofchart/delete/${c.idProduct}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a type="btn" class="btn btn-primary" href="/TicToc/homepage">Back</a>
    </div>
</body>
</html>
