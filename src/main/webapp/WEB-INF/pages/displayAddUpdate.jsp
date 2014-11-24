<%--
  Created by IntelliJ IDEA.
  User: Raju
  Date: 11/24/2014
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddUpdateCartItemsRequest</title>

    <script type="text/javascript"></script>
</head>
<body>


<div>
    <fieldset>
        <legend>AddUpdateCartItemsRequest</legend>
        <div>
            <fieldset>
                <legend>User Information:</legend>
                <table>
                    <tr>
                        <td>First Name :${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.firstName}</td>
                        <td> Last Name:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.lastName}</td>
                        <td> Middle Name:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.middleName}</td>
                    </tr>
                    <tr>
                        <td> Email:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.email}</td>
                        <td>Loyalty Id:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.loyaltyId}</td>
                        <td>Date Of Birth :${registeredCheckoutRequest.addUpdateCartItemsRequest.user.dateOfBirth}</td>
                    </tr>
                    <tr>
                        <td> Area Code:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.areaCode}</td>
                        <td> Exchange:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.exchange}</td>
                        <td> Extension:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.extension}</td>
                        <td> LoyaltyPostalCode:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.loyaltyPostalCode}</td>
                    </tr>
                    <tr>
                        <td>UserId :${registeredCheckoutRequest.addUpdateCartItemsRequest.credentials.userId}</td>
                        <td>PassWord :${registeredCheckoutRequest.addUpdateCartItemsRequest.credentials.password}</td>
                        <td>CheckOut :${registeredCheckoutRequest.addUpdateCartItemsRequest.checkOut}</td>
                        <td>CartId :${registeredCheckoutRequest.addUpdateCartItemsRequest.cartId}</td>
                    </tr>

                </table>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>User info</legend>
                <table>
                    <tr>
                        <th>S.No.</th>
                        <th>Sku Code</th>
                        <th>Quantity</th>
                        <th>Gift</th>
                    </tr>
                    <c:forEach items="${registeredCheckoutRequest.addUpdateCartItemsRequest.addItemList}" var="addItemList" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td > ${addItemList.skuCode}</td>
                        <td> ${addItemList.quantity}</td>
                        <td> ${addItemList.gift}</td>
                    </tr>
                    </c:forEach>
                </table>
                </fieldset>
        </div>
    </fieldset>

</div>
</body>
</html>