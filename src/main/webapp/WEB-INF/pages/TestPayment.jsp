<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title> Credit card </title>
</head>
<body>

    <div>
        <form>

            <fieldset>
                <legend>Submit Payment Request </legend>

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


            </fieldset>
            </form>
        </div>
</body>
</html>

