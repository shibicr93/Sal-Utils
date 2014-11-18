<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>HarnessTest</title>
    <script type="application/javascript">
        function getCount(){
            var count=document.getElementById(count).value;
            alert(count);
            return count;
        }
    </script>

</head>
<body>

<h2>SAL WORKFLOW TEST</h2>

<form:form action="/test/addItem" commandName="registeredCheckoutRequest">
    <form:label path="addUpdateCartItemsRequest.productId">Product ID: </form:label> <form:input path="addUpdateCartItemsRequest.productId.productId"></form:input>
    <input type="submit" value="Submit">


</form:form>

















<%--<form method="get" action="/test/addItem">--%>
    <%--<h2>User Information</h2>--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td> First Name: <input type="text" id="fName" name="names.firstName"></td>--%>
            <%--<td> Middle Name: <input type="text" id="mName" name="name.middleName"></td>--%>
            <%--<td> Last Name: <input type="text" id="lName" name="names.lastName"></td>--%>
            <%--<td> Email: <input type="email" id="email" name="email"></td>--%>
            <%--<td> Date of Birth:<input type="date" id="dob" name="dob"></td>--%>
            <%--<td>Phone:  <input type="number" id="phone" name="phone"></td>--%>

        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td>Address 1: <input type="text" id="address1" name="address1"></td>--%>
            <%--<td>Address 2: <input type="text" id="address2" name="address2"></td>--%>
            <%--<td>City: <input type="text" id="city" name="city"></td>--%>
            <%--<td>State Code: <input type="text" id="stateCode" name="stateCode"></td>--%>
            <%--<td>Country Code: <input type="text" id="countryCode" name="countryCode"></td>--%>
            <%--<td>Zip Code: <input type="text" id="zipCode" name="zipCode"></td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
    <%--</br>--%>

<%--<h2>Add Items to Cart</h2>--%>
    <%--</br>--%>
<%--<form>--%>
    <%--No. of Items: <input type="text" id="count" name="count">--%>
    <%--<input type="button" name="add" value="add">--%>

    <%--<% if(request.getParameter("count")!=null){--%>
        <%--String count;--%>
        <%--try {--%>
            <%--count=request.getParameter("count");--%>
        <%--}catch (Exception e)--%>
        <%--{--%>
            <%--count="0";--%>
            <%--e.getMessage();--%>
        <%--}--%>
    <%--%>--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<th>S.No.</th>--%>
            <%--<th>Product ID</th>--%>
            <%--<th>Cart ID</th>--%>
            <%--<th>Sku Code</th>--%>
            <%--<th>Quantity</th>--%>
        <%--</tr>--%>
        <%--<%--%>
            <%--int ctr=Integer.parseInt(count);--%>
            <%--for (int i = 0; i < ctr; i++) {--%>

        <%--%>--%>
        <%--<tr>--%>
            <%--<td> <%= i+1 %></td>--%>
            <%--<td><input type="text" name="addItemsToCart[<%=i%>].productId" value="${addItemsToCart.productId}"></td>--%>
            <%--<td><input type="text" name="addItemsToCart[<%=i%>]" value="${addItemsToCart.cartId}"></td>--%>
            <%--<td><input type="text" name="addItemsToCart[<%=i%>]" value="${addItemsToCart.skuCode}"></td>--%>
            <%--<td><input type="text" name="addItemsToCart[<%=i%>]" value="${addItemsToCart.quantity}"></td>--%>
            <%--&lt;%&ndash;<td><input type="submit" value="remove" id="<%=i+1%>" onclick="document.getElementById(<%=i+1%>).onrowsdelete();"></td>&ndash;%&gt;--%>
        <%--</tr>--%>
        <%--<%--%>
                <%--}--%>
            <%--}--%>
        <%--%>--%>

    <%--</table>--%>
    <%--</br>--%>


    <%--<input type="submit" value="submit" />--%>
<%--</form>--%>
</body>
</html>
