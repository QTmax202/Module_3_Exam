<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2/13/2022
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>View Products</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
          integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<br>
<div class="row">
    <div class="col-sm-3">
        <button type="button" class="btn btn-info" style="margin: 20px">
            <a href="${pageContext.request.contextPath}/product?action=createGet" style="color: white; text-description:none">
                <i class="fa-solid fa-plus"></i> Add New Product</a>
        </button>
    </div>
    <div class="col-sm-6"></div>
    <div class="col-sm-3">
        <form class="nav-link d-flex" action="<c:url value="/product?action=searchProduct"/>" method="post">
            <table>
                <tr>
                    <td size="20">
                        <input class="form-control mr-2" type="text" placeholder="Search" name="searchProductName" value="${tim}">
                    </td>
                    <td>
                        <button class="btn btn-primary ml-2" type="submit" style="color: white"><i class="fa-solid fa-magnifying-glass"></i> Search</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div class="card">
    <h5 class="card-header font-weight-light">
        <span class="fas fa-tasks fa-fw mr-3"></span>
        <span><b>Product List</b></span>
    </h5>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Color</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.getId_product()}</td>
                        <td>${product.getName()}</td>
                        <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${product.getPrice()}" type="currency"/>
                        </td>
                        <td>${product.getQuantity()}</td>
                        <td>${product.getColor()}</td>
                        <td>${product.getCategory()}</td>
                        <td>
                            <button type="button" class="btn btn-info">
                                <a style="color: white; text-decoration: none"
                                   href="<c:url value="/product?action=editGet&id=${product.getId_product()}"/>">
                                    <i class="fa-solid fa-pencil"></i></a>
                            </button>
                             |
                            <button type="button" class="btn btn-danger">
                                <a style="color: white; text-decoration: none"
                                   href="<c:url value="/product?action=delete&id=${product.getId_product()}"/>">
                                    <i class="fa-solid fa-trash"></i></a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
