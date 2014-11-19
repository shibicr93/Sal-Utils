<%--
  Created by IntelliJ IDEA.
  User: Raju
  Date: 11/19/2014
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Testing</title>
</head>
<body>
<div>
    <fieldset>
        <legend>Billing Contact</legend>
        <table>

            <tr>
                <td> First Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.firstName}<br></td>
                <td> Middle Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.middleName}<br></td>
                <td> Last Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.lastName}<br></td>
            </tr>
            <tr>
                <td> Address 1:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.address1}</td>
                <td> Address 2:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.address2}</td>
                <td> State Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.stateCode}</td>
                <td> Country Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.countryCode}</td>
                <td> Zip Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.zipCode}</td>
                <td> County Geo Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.countyGeoCode}</td>
            </tr>
            <tr>
                <td> Area Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.areaCode}</td>
                <td> Exchange:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.exchange}</td>
                <td> Extension:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.extension}</td>
            </tr>
            <tr>
                <td> Email:${registeredCheckoutRequest.billingShippingRequest.billingContact.email}</td>
            </tr>
        </table>
    </fieldset>
</div>
<div>
    <fieldset>
        <legend>Shipping Contact</legend>
        <table>

            <tr>
                <td> First Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.firstName}<br></td>
                <td> Middle Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.middleName}<br></td>
                <td> Last Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.lastName}<br></td>
            </tr>
            <tr>
                <td> Address 1:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.address1}</td>
                <td> Address 2:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.address2}</td>
                <td> State Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.stateCode}</td>
                <td> Country Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.countryCode}</td>
                <td> Zip Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.zipCode}</td>
                <td> County Geo Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.countyGeoCode}</td>
            </tr>
            <tr>
                <td> Area Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.areaCode}</td>
                <td> Exchange:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.exchange}</td>
                <td> Extension:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.extension}</td>
            </tr>
            <tr>
                <td> Email:${registeredCheckoutRequest.billingShippingRequest.shippingContact.email}</td>
            </tr>
        </table>
    </fieldset>
</div>



</br></br>

<div>
    <table>
        <tr>
            <td>Shipping Method: ${registeredCheckoutRequest.billingShippingRequest.shippingMethod}</td>
        </tr>
        <tr>
            <td > Expedited Checkout:${registeredCheckoutRequest.billingShippingRequest.expeditedCheckout}         </td>
            <td > Validate ShippingMethod:${registeredCheckoutRequest.billingShippingRequest.validateShippingMethod}    </td>
            <td > BothAddressSame:${registeredCheckoutRequest.billingShippingRequest.shippingAddressSameAsBillingAddress}</td>

        </tr>
    </table>
</div>

</body>
</html>
