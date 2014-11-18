<%--
  Created by IntelliJ IDEA.
  User: Shibi
  Date: 8/4/14
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Harness Result</title>
</head>
<body>

<h2>Workflow Result</h2>


<form:form action="/test/addItem" commandName="registeredCheckoutRequest">
    <form:label path="addUpdateCartItemsRequest.addItemList.productId">Product ID: </form:label> ${registeredCheckoutRequest.productId}
    <input type="submit" value="Return to form">

</form:form>



<%--<table>--%>
    <%--<tr>--%>
        <%--<th>product_id</th>--%>
        <%--<th>sku_code</th>--%>
        <%--<th>quantity</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${addItemsToCart.addItemsToCart}" var="addItemToCart" varStatus="status">--%>
        <%--<tr>--%>
            <%--<td>${addItemToCart.product_id}</td>--%>
            <%--<td>${addItemToCart.sku_code}</td>--%>
            <%--<td>${addItemToCart.quantity}</td>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
</body>
</html>
