<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Raju
  Date: 11/18/2014
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>

    <title>BillingShipping</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="application/javascript">
        function toggle(className, obj) {
            var $input = $(obj);
            if ($input.prop('checked')) $(className).hide(500);
            else $(className).show(500);

        }
    </script>

</head>
<body>
<form:form  action="/test//billingShippingResponse" modelAttribute="registeredCheckoutRequest">
    <div>
        <fieldset>
            <legend>Billing Shipping request:</legend>
            </br></br>
            <div>
                <fieldset>
                    <legend>Billing Contact</legend>
                    <table>

                        <tr>
                            <td> First Name:<input name="billingShippingRequest.billingContact.names.firstName" required="true"><br></td>
                            <td> Middle Name:<input type="text" name="billingShippingRequest.billingContact.names.middleName"  value=${billingContact.names.middleName}><br></td>
                            <td> Last Name:<input type="text" name="billingShippingRequest.billingContact.names.lastName" required="true" value=${billingContact.names.lastName}><br></td>
                        </tr>
                        <tr>
                            <td> Address 1:<input type="text" name="billingShippingRequest.billingContact.address.address1" value=${billingContact.address.address1}></td>
                            <td> Address 2:<input type="text" name="billingShippingRequest.billingContact.address.address2" value=${billingContact.address.address2}></td>
                            <td> State Code:<input type="text" name="billingShippingRequest.billingContact.address.stateCode" required="true" value=${billingContact.address.stateCode}></td>
                            <td> Country Code:<input type="text" name="billingShippingRequest.billingContact.address.countryCode" required="true" value=${billingContact.address.countryCode}></td>
                            <td> Zip Code:<input type="text" name="billingShippingRequest.billingContact.address.zipCode" required="true" value=${billingContact.address.zipCode}></td>
                            <td> County Geo Code:<input type="text" name="billingShippingRequest.billingContact.address.countyGeoCode" value=${billingContact.address.countyGeoCode}></td>
                        </tr>
                        <tr>
                            <td> Area Code:<input type="text" name="billingShippingRequest.billingContact.phone.areaCode" value=${billingContact.phone.areaCode}></td>
                            <td> Exchange:<input type="text" name="billingShippingRequest.billingContact.phone.exchange" value=${billingContact.phone.exchange}></td>
                            <td> Extension:<input type="text" name="billingShippingRequest.billingContact.phone.extension" value=${billingContact.phone.extension}></td>
                        </tr>
                        <tr>
                            <td> Email:<input type="text" name="billingShippingRequest.billingContact.email"  value=${billingContact.email}></td>
                        </tr>
                    </table>
                </fieldset>
            </div>
            </br></br>
            <input type="checkbox" onclick="toggle('.myClass', this)" name="billingShippingRequest.shippingAddressSameAsBillingAddress" value="true">shipping contact is same as billing contact


		<div class="myClass">
            <fieldset>
                <legend>Shipping Contact</legend>
                <table>

                    <tr>
                        <td> First Name:<input type="text" name="billingShippingRequest.shippingContact.names.firstName" required="true" value=${shippingContact.names.firstName}><br></td>
                        <td> Middle Name:<input type="text" name="billingShippingRequest.shippingContact.names.middleName" value=${shippingContact.names.middleName}><br></td>
                        <td> Last Name:<input type="text" name="billingShippingRequest.shippingContact.names.lastName" required="true" value=${shippingContact.names.lastName}><br></td>
                    </tr>
                    <tr>
                        <td> Address 1:<input type="text" name="billingShippingRequest.shippingContact.address.address1" value=${shippingContact.address.address1}></td>
                        <td> Address 2:<input type="text" name="billingShippingRequest.shippingContact.address.address2" value=${shippingContact.address.address2}></td>
                        <td> State Code:<input type="text" name="billingShippingRequest.shippingContact.address.stateCode"  required="true" value=${shippingContact.address.stateCode}></td>
                        <td> Country Code:<input type="text" name="billingShippingRequest.shippingContact.address.countryCode"  required="true" value=${shippingContact.address.countryCode}></td>
                        <td> Zip Code:<input type="text" name="billingShippingRequest.shippingContact.address.zipCode" required="true" value=${shippingContact.address.zipCode}></td>
                        <td> County Geo Code:<input type="text" name="billingShippingRequest.shippingContact.address.countyGeoCode" required="true" value=${shippingContact.address.countyGeoCode}></td>
                    </tr>
                    <tr>
                        <td> Area Code:<input type="text"  name="billingShippingRequest.shippingContact.phone.areaCode" value=${shippingContact.phone.areaCode}></td>
                        <td> Exchange:<input type="text" name="billingShippingRequest.shippingContact.phone.exchange" value=${shippingContact.phone.exchange}></td>
                        <td> Extension:<input type="text" name="billingShippingRequest.shippingContact.phone.extension" value=${shippingContact.phone.extension}></td>
                    </tr>
                    <tr>
                        <td> Email:<input type="text" name="billingShippingRequest.shippingContact.email" value=${shippingContact.email}></td>
                    </tr>

                </table>
            </fieldset>
        </div>


            </br></br>

            <div>
                <table>
                    <tr>
                        <td>Shipping Method: <select name="billingShippingRequest.shippingMethod">
                                                <option value="false">select</option>
                                                <option value="method1">method1</option>
                                                <option value="method2">method2</option>
                                                <option value="method3">method3</option>
                                                <option value="method4">method4</option>
                                             </select>
                        </td>
                    </tr>
                    <tr>
                        <td > <input type="checkbox" name="billingShippingRequest.expeditedCheckout" value="true"> Expedited Checkout


                        </td>
                        <td >  <input type="checkbox" name="billingShippingRequest.validateShippingMethod" value="true"> Validate ShippingMethod


                        </td>


                    </tr>
                </table>
            </div>


        </fieldset>
    </div>
    <input type="submit" value="submit">
</form:form>
</body>
</html>

