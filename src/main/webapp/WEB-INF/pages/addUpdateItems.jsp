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
<form action="/test/addUpdateItemsResponse" modelAttribute="registeredCheckoutRequest">

<div>
    <fieldset>
        <legend>AddUpdateCartItemsRequest</legend>
        <div>
            <fieldset>
                <legend>User Information:</legend>
                <table>
                    <tr>

                        <td>First Name :<input type="text" name="addUpdateCartItemsRequest.user.names.firstName" required="true"><br></td>
                        <td> Last Name:<input type="text" name="addUpdateCartItemsRequest.user.names.lastName" required="true" ><br></td>
                        <td> Middle Name:<input type="text" name="addUpdateCartItemsRequest.user.names.MiddleName" required="true" ><br></td>
                    </tr>
                    <tr>
                        <td> Email:<input name="addUpdateCartItemsRequest.user.email" required="true"><br></td>
                        <td>Loyalty Id :<input type="text" name="addUpdateCartItemsRequest.user.loyaltyId" required="true"><br></td>
                        <td>Date Of Birth :<input type="text" name="addUpdateCartItemsRequest.user.dateOfBirth" required="true"><br></td>
                    </tr>
                    <tr>
                        <td> Area Code:<input type="text" name="addUpdateCartItemsRequest.user.phone.areaCode" ></td>
                        <td> Exchange:<input type="text" name="addUpdateCartItemsRequest.user.phone.exchange" ></td>
                        <td> Extension:<input type="text" name="addUpdateCartItemsRequest.user.phone.extension" ></td>
                        <td> LoyaltyPostalCode:<input type="text" name="addUpdateCartItemsRequest.user.loyaltyPostalCode" ></td>
                    </tr>
                    <tr>
                        <td>UserId :<input type="text" name="addUpdateCartItemsRequest.credentials.userId" required="true"><br></td></td>
                        <td>Password :<input type="text" name="addUpdateCartItemsRequest.credentials.password" required="true"><br></td>
                    </tr>
                    <tr>
                        <td>CheckOut :<input type="radio" name="addUpdateCartItemsRequest.checkOut" value="true"><br></td>
                        <td>CartId :<input type="text" name="addUpdateCartItemsRequest.cartId"><br></td>
                    </tr>
                </table>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>Add Items to Cart</legend>
                <table>
                    <tr>
                        <th>S.No.</th></br>
                        <th>Sku Code</th></br>
                        <th>Quantity</th></br>
                        <th>Gift</th></br>
                    </tr>
                    <%
                        int j=3;
                        for(int i = 0; i<j ; i++) { %>
                    <tr>
                        <td><%=i+1%></td>
                        <td > <input type="text" name="addUpdateCartItemsRequest.addItemList[<%=i%>].skuCode"/></td>
                        <td> <input type="text" name="addUpdateCartItemsRequest.addItemList[<%=i%>].quantity"/></td>
                        <td> <input type="checkbox" name="addUpdateCartItemsRequest.addItemList[<%=i%>].gift"/></td>
                    </tr>

                    <%}%>
                </table>
                </fieldset>
            </div>
            </fieldset>
        </div>


        <center><input type="submit" value="submit"></center>
    </form>
</body>

</html>