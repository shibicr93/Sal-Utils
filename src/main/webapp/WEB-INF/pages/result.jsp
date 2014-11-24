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
    <title>Result page</title>

    <style>
        body {background-color:#CCFFFF}
        h1   {color:blue}
        p    {color:green}
        sup  {color:red}
        legend {color:red}

    </style>
</head>
<body>
<h2>Result page</h2>
<div>
    <fieldset>
        <legend align="center">AddUpdateCartItemsRequest</legend>
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
        </br></br>
        <div>
            <fieldset>
                <legend>Add Items to Cart</legend>
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
        </br></br>
    </fieldset>
</div>
</br></br>
<div>
    <fieldset>
        <legend align="center">Billing Shipping request:</legend>
        </br></br>
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
        </br></br>
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
        </br></br>
    </fieldset>
</div>
</br></br>
<div>

    <fieldset>
        <legend align="center">Submit Payment Request </legend>

        <div>
            <fieldset>
                <legend> credit card details </legend>
                <table>

                    <tr>
                        <td>Card Holder Name:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardHolderName}</td>
                        <td> Card Number:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardNumber}  </td>
                        <td>Card brand:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardBrand.displayName}      </td>

                    </tr>


                    <tr>
                        <td>Card Month:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardMonth}</td>
                        <td>Card Year:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardYear}</td>
                        <td>CID:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cid}</td>
                    </tr>
                    <tr>
                        <td>Amount:${registeredCheckoutRequest.submitPaymentRequest.creditCard.amount}</td>
                        <td>Remaining Balance:${registeredCheckoutRequest.submitPaymentRequest.creditCard.remBal} </td>
                        <td>CCID:${registeredCheckoutRequest.submitPaymentRequest.creditCard.ccdId}</td>
                    </tr>
                    <tr>
                        <td>Expiration Date:${registeredCheckoutRequest.submitPaymentRequest.creditCard.expirationDate} </td>
                        <td>Expedited checkout:${registeredCheckoutRequest.submitPaymentRequest.creditCard.expeditedCheckout} </td>
                        <td>Eligible for Expedited checkout:${registeredCheckoutRequest.submitPaymentRequest.creditCard.eligibleForExpeditedCheckout}</td>
                    </tr>
                </table>
            </fieldset>
        </div>
        </br></br>
        <div>

            <fieldset>
                <legend> PromoCode details </legend>
                <table>

                    <tr>
                        <td>Code:${registeredCheckoutRequest.submitPaymentRequest.promoCode.code}</td>
                        <td>Amount:${registeredCheckoutRequest.submitPaymentRequest.promoCode.amount}</td>
                        <td>Promocode type:${registeredCheckoutRequest.submitPaymentRequest.promoCode.type.type}</td>

                    </tr>
                    <tr>
                        <td>Percentage:${registeredCheckoutRequest.submitPaymentRequest.promoCode.percentage}</td>
                        <td>PromoId:${registeredCheckoutRequest.submitPaymentRequest.promoCode.promoId}</td>
                        <td>Offer Scope:${registeredCheckoutRequest.submitPaymentRequest.promoCode.offerScope}</td>
                        <td>Applied:${registeredCheckoutRequest.submitPaymentRequest.promoCode.applied}</td>
                    </tr>

                    <tr>

                        <td>Expedited checkout:${registeredCheckoutRequest.submitPaymentRequest.expeditedCheckout}</td>
                        <td>is Registered:${registeredCheckoutRequest.submitPaymentRequest.registered}</td>
                        <td>Fail fast:${registeredCheckoutRequest.submitPaymentRequest.failfast}</td>
                    </tr>

                </table>
            </fieldset>
        </div>
        </br></br>
    </fieldset>
</div>
</br></br>

</body>
</html>
