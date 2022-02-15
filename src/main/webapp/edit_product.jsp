<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2/13/2022
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update Product</title>
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
<div class="row">
    <div class="col-lg-3 col-md-2"></div>
    <div class="col-lg-6 col-md-8">
        <h3 class="display-5">Update Product</h3>
        <div class="card">
            <div class="card-body row">
                <form action="<c:url value="/product?action=editPost&id=${productEdit.getId_product()}"/>" method="post">
                    <table>
                        <tr>
                            <th>Name:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="name" size="95"
                                       value="${productEdit.getName()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Price:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="price" size="95"
                                       value="${productEdit.getPrice()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Quantity:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="quantity" size="95"
                                       value="${productEdit.getQuantity()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Color:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="color" size="95"
                                       value="${productEdit.getColor()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Description:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="description" size="95"
                                       value="${productEdit.getDescription()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Category:</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="category" id="category">
                                    <c:forEach items="${categories}" var="category">
                                        <option value="${category.getId_category()}">${category.getName_category()}</option>
                                    </c:forEach>
                                </select>
                                <c:if test="${productEdit != null}">
                                    <script>
                                        function myFunction() {
                                            document.getElementById("category").value = "${id_category}";
                                        }
                                        <c:if test="${productEdit != null}">myFunction()</c:if>
                                    </script>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button type="submit" class="btn btn-success">Update</button>
                                |
                                <button type="button" class="btn btn-secondary">
                                    <a href="<c:url value="/product"/>" style="color:white; text-description:none">Back</a>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <c:if test="${requestScope['check'] == true}">
                                <h5 style="color: #ff0000">Update Product Successful</h5>
                            </c:if>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-2"></div>
</div>
</body>
</html>
