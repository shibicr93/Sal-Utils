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
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <title>Result page</title>

    <style>
        .panel-heading span {
            margin-top: -20px;
            font-size: 15px;
        }
        .row {
            margin-top: 40px;
            padding: 0 10px;
        }
        .clickable {
            cursor: pointer;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        jQuery(function ($) {
            $('.panel-heading span.clickable').on("click", function (e) {
                if ($(this).hasClass('panel-collapsed')) {
                    // expand the panel
                    $(this).parents('.panel').find('.panel-body').slideDown();
                    $(this).removeClass('panel-collapsed');
                    $(this).find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
                }
                else {
                    // collapse the panel
                    $(this).parents('.panel').find('.panel-body').slideUp();
                    $(this).addClass('panel-collapsed');
                    $(this).find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
                }
            });
        });
    </script>
</head>
<body>


<div class="bs-example">
<div class="tabbable">
<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#tab1" data-loading-text="Loading...">Welcome</a></li>
    <li><a data-toggle="tab" href="#tab2" data-loading-text="Loading...">Result</a></li>
    <li><a data-toggle="tab" href="#tab3" data-loading-text="Loading...">Other information</a></li>
</ul>
<div class="tab-content">
<div id="tab1" class="tab-pane active fade in">
    <h2>This is result page of test harness. To see result click on the <code>Result</code> tab.</h2>
</div>
<div id="tab2" class="tab-pane fade">
<h2 align="center">Result Page</h2>
<div class="container">
<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">

                <h3 class="panel-title"> User Information</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>First Name :${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.firstName}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p> Middle Name:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.middleName}</p>
                        </div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p> Last Name:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.names.lastName}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Email:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.email}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Loyalty Id:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.loyaltyId}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Date Of Birth :${registeredCheckoutRequest.addUpdateCartItemsRequest.user.dateOfBirth}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>



                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Area Code: ${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.areaCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Exchange:  ${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.exchange}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Extension: ${registeredCheckoutRequest.addUpdateCartItemsRequest.user.phone.extension}</p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> LoyaltyPostalCode:${registeredCheckoutRequest.addUpdateCartItemsRequest.user.loyaltyPostalCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>UserId :${registeredCheckoutRequest.addUpdateCartItemsRequest.credentials.userId}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>PassWord :${registeredCheckoutRequest.addUpdateCartItemsRequest.credentials.password}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>CheckOut :<b>${registeredCheckoutRequest.addUpdateCartItemsRequest.checkOut}</b></p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>CartId :${registeredCheckoutRequest.addUpdateCartItemsRequest.cartId}</p>

                        </div>
                    </div>
                </div>
                </br></br>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Add Items to Cart</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div>
                            <table cellspacing="10">
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
                                        <td> <b>${addItemList.gift}</b></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
                </br></br>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Billing Contact</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> First Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.firstName}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p> Middle Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.middleName}</p>
                        </div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p> Last Name:${registeredCheckoutRequest.billingShippingRequest.billingContact.names.lastName}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Address 1:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.address1}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Address 2:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.address2}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> State Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.stateCode}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>



                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Country Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.countryCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Zip Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.zipCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> County Geo Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.address.countyGeoCode}</p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Area Code:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.areaCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Exchange:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.exchange}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Extension:${registeredCheckoutRequest.billingShippingRequest.billingContact.phone.extension}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Email:${registeredCheckoutRequest.billingShippingRequest.billingContact.email}</p>
                        </div>
                    </div>
                </div>
                </br></br>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Shipping Contact</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> First Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.firstName}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p> Middle Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.middleName}</p>
                        </div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p> Last Name:${registeredCheckoutRequest.billingShippingRequest.shippingContact.names.lastName}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Address 1:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.address1}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Address 2:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.address2}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> State Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.stateCode}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>



                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Country Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.countryCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Zip Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.zipCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> County Geo Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.address.countyGeoCode}</p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Area Code:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.areaCode}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Exchange:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.exchange}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Extension:${registeredCheckoutRequest.billingShippingRequest.shippingContact.phone.extension}</p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Email:${registeredCheckoutRequest.billingShippingRequest.shippingContact.email}</p>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p> Shipping Method: ${registeredCheckoutRequest.billingShippingRequest.shippingMethod}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p> Expedited Checkout:<b>${registeredCheckoutRequest.billingShippingRequest.expeditedCheckout}</b></p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p>  Validate ShippingMethod:<b>${registeredCheckoutRequest.billingShippingRequest.validateShippingMethod}</b></p>
                        </div>
                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p> BothAddressSame:<b>${registeredCheckoutRequest.billingShippingRequest.shippingAddressSameAsBillingAddress}</b></p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">credit card details</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Card Holder Name:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardHolderName}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p> Card Number:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardNumber}  </p>
                        </div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p>Card brand:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardBrand.displayName}      </p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Card Month:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardMonth}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Card Year:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cardYear}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>CID:${registeredCheckoutRequest.submitPaymentRequest.creditCard.cid}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>



                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Amount:${registeredCheckoutRequest.submitPaymentRequest.creditCard.amount}</p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Remaining Balance:${registeredCheckoutRequest.submitPaymentRequest.creditCard.remBal} </p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>CCID:${registeredCheckoutRequest.submitPaymentRequest.creditCard.ccdId}</p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Expiration Date:${registeredCheckoutRequest.submitPaymentRequest.creditCard.expirationDate} </p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Expedited checkout:<b>${registeredCheckoutRequest.submitPaymentRequest.creditCard.expeditedCheckout}</b> </p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Eligible for Expedited checkout:<b>${registeredCheckoutRequest.submitPaymentRequest.creditCard.eligibleForExpeditedCheckout}</b></p>

                        </div>

                    </div>
                </div>
                </br></br>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">PromoCode details</h3>
                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
            </div>
            <div class="panel-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Code:${registeredCheckoutRequest.submitPaymentRequest.promoCode.code}</p>
                        </div>
                        <div class="  col-sm-6 col-md-4 col-lg-4 " >
                            <p>Amount:${registeredCheckoutRequest.submitPaymentRequest.promoCode.amount}</p>
                        </div>

                        <div class=" col-sm-6 col-md-4 col-lg-4 " >
                            <p>Promocode type:${registeredCheckoutRequest.submitPaymentRequest.promoCode.type.type}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Percentage:${registeredCheckoutRequest.submitPaymentRequest.promoCode.percentage}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>PromoId:${registeredCheckoutRequest.submitPaymentRequest.promoCode.promoId}</p>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Offer Scope:${registeredCheckoutRequest.submitPaymentRequest.promoCode.offerScope}</p>
                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>



                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Applied:<b>${registeredCheckoutRequest.submitPaymentRequest.promoCode.applied}</b></p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Expedited checkout:<b>${registeredCheckoutRequest.submitPaymentRequest.expeditedCheckout}</b></p>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>is Registered:<b>${registeredCheckoutRequest.submitPaymentRequest.registered}</b></p>

                        </div>
                        <div class="clearfix visible-md"></div>
                        <div class="clearfix visible-lg"></div>
                        <div class="col-sm-6 col-md-4 col-lg-4 " >
                            <p>Fail fast:<b>${registeredCheckoutRequest.submitPaymentRequest.failfast}</b></p>

                        </div>
                    </div>
                </div>
                </br></br>
            </div>
        </div>
    </div>
</div>
</div>
</br></br>
</div>
<div id="tab3" class="tab-pane fade">
    <p>Other information</p>
</div>
</div>
</div>
</div>
</br></br>
</body>
</html>
