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

    <title>Request page</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="dynamicList.js"></script>
    <script type="application/javascript">
        function toggle(className, obj) {
            var $input = $(obj);
            if ($input.prop('checked')) $(className).hide(500);
            else $(className).show(500);

        }

    </script>
    <SCRIPT language="javascript">
        function addRow(tableID) {

            var table = document.getElementById(tableID);

            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);

            var cell1 = row.insertCell(0);
            var element1 = document.createElement("input");
            element1.type = "checkbox";
            element1.name="chkbox[]";
            cell1.appendChild(element1);

            var cell2 = row.insertCell(1);
            cell2.innerHTML = rowCount;

            var cell3 = row.insertCell(2);
            var element3 = document.createElement("input");
            element3.type = "text";

            element3.name="addUpdateCartItemsRequest.addItemList["+rowCount+"].skuCode";
            cell3.appendChild(element3);

            var cell4 = row.insertCell(3);
            var element4 = document.createElement("input");
            element4.type = "number";
            element4.name="addUpdateCartItemsRequest.addItemList["+rowCount+"].quantity";
            cell4.appendChild(element4);

            var cell5 = row.insertCell(4);
            var element5 = document.createElement("input");
            element5.type = "checkbox";
            element5.name="addUpdateCartItemsRequest.addItemList["+rowCount+"].gift";
            cell5.appendChild(element5);


        }

        function deleteRow(tableID) {
            try {
                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;

                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if(null != chkbox && true == chkbox.checked) {
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                    }


                }
            }catch(e) {
                alert(e);
            }
        }

    </SCRIPT>


    <script src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
    <script>


    $().ready(function() {
        $("#myForm").validate({
            rules: {

                "addUpdateCartItemsRequest.user.names.firstName": "required",
                "addUpdateCartItemsRequest.user.names.lastName": "required",

                "addUpdateCartItemsRequest.credentials.userId": {
                    required: true,
                    minlength: 3
                },
                "addUpdateCartItemsRequest.credentials.password": {
                    required: true,
                    minlength: 5
                },
//
                "addUpdateCartItemsRequest.user.email": {
                    required: true,
                    email: true
                },
                "addUpdateCartItemsRequest.user.loyaltyId":{
                    required: true,
                    number:true
                },
                "addUpdateCartItemsRequest.user.dateOfBirth":{
                    required:true,
                    date:true
                },
                "addUpdateCartItemsRequest.cartId":{
                    required:true,
                    number:true
                },

                //billingShipping fields validation starts from here
                "billingShippingRequest.billingContact.names.firstName": "required",
                "billingShippingRequest.billingContact.names.lastName": "required",
                "billingShippingRequest.billingContact.address.stateCode":"required",
                "billingShippingRequest.billingContact.address.countryCode":"required",
                "billingShippingRequest.billingContact.address.zipCode":{
                    required:true,
                    number:true
                },
//                    "billingShippingRequest.billingContact.address.countyGeoCode":{
//                        required:true,
//                        number:true
//                    },
//                    "billingShippingRequest.billingContact.phone.areaCode":{
//                        required:true,
//                        number:true
//                    },
//                    "billingShippingRequest.billingContact.phone.exchange":{
//                        required:true,
//                        number:true
//                    },
//                    "billingShippingRequest.billingContact.phone.extension":{
//                        required:true,
//                        number:true
//                    },
                "billingShippingRequest.billingContact.email":{
                    required:true,
                    email:true
                },

                //optional , needed when both addresses are same flag is false


                "billingShippingRequest.shippingContact.names.firstName":{
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    }
                },
                "billingShippingRequest.shippingContact.names.lastName": {
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    }
                },
                "billingShippingRequest.shippingContact.address.stateCode":{
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    }
                },
                "billingShippingRequest.shippingContact.address.countryCode":{
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    }
                },
                "billingShippingRequest.shippingContact.address.zipCode":{
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    },
                    number:true
                },
                "billingShippingRequest.shippingContact.email":{
                    required:function(){
                        if(($('#isSame').is(':checked'))) {
                            return false;
                        }
                        else{
                            return true;
                        }
                    },
                    email:true
                },



                //submitPaymentRequest fields validation starts from here

                "submitPaymentRequest.creditCard.cardHolderName":"required",
                "submitPaymentRequest.creditCard.cardNumber":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.cardMonth":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.cardYear":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.cid":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.amount":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.remBal":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.ccdId":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.creditCard.expirationDate":{
                    required:true,
                    date:true
                },
                "submitPaymentRequest.promoCode.code":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.promoCode.amount":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.promoCode.percetage":{
                    required:true,
                    number:true
                },
                "submitPaymentRequest.promoCode.promoId":{
                    required:true,
                    number:true
                }
            },


            messages: {
                "addUpdateCartItemsRequest.user.names.firstName": "Please enter your first name",
                "addUpdateCartItemsRequest.user.names.lastName": "Please enter your last name",
                "addUpdateCartItemsRequest.user.names.MiddleName":"Please enter your middle name",
                "addUpdateCartItemsRequest.credentials.userId": {
                    required: "Please enter a username",
                    minlength: "Your username must consist of at least 3 characters"
                },
                "addUpdateCartItemsRequest.credentials.password": {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                },

                "addUpdateCartItemsRequest.user.email": "Please enter a valid email address",
                "addUpdateCartItemsRequest.user.loyaltyId":{
                    required: "Please provide a loyalty id",
                    number: "Loyalty must be an integer type"
                },
                "addUpdateCartItemsRequest.user.dateOfBirth":{
                    required:"Please provide date of birth",
                    date:"Date of birth must be of type 04-Apr-1994"
                },
                "addUpdateCartItemsRequest.cartId":{
                    required:"Required cartId",
                    number:"must be of type integer"
                },


                //billingShipping fields validation error messages starts from here

                "billingShippingRequest.billingContact.names.firstName": "Please enter your first name",
                "billingShippingRequest.billingContact.names.lastName": "Please enter your last name",
                "billingShippingRequest.billingContact.address.stateCode":"state code required",
                "billingShippingRequest.billingContact.address.countryCode":"country code required",
                "billingShippingRequest.billingContact.address.zipCode":{
                    required:"Please provide zip code",
                    number:"It must be of integer type"
                },
//                    "billingShippingRequest.billingContact.address.countyGeoCode":{
//                        required:"Please provide county geo code",
//                        number:"It must be of integer type"
//                    },
//                    "billingShippingRequest.billingContact.phone.areaCode":{
//                        required:"Please provide area code",
//                        number:"It must be of integer type"
//                    },
//                    "billingShippingRequest.billingContact.phone.exchange":{
//                        required:"Please provide exchange code",
//                        number:"It must be of integer type"
//                    },
//                    "billingShippingRequest.billingContact.phone.extension":{
//                        required:"Please provide extension code",
//                        number:"It must be of integer type"
//                    },
                "billingShippingRequest.billingContact.email":{
                    required:"Please provide a email id",
                    email:"eg xyz@gmail.com"
                },


                "billingShippingRequest.shippingContact.names.firstName": "Please enter your first name",
                "billingShippingRequest.shippingContact.names.lastName": "Please enter your last name",
                "billingShippingRequest.shippingContact.address.stateCode":"state code required",
                "billingShippingRequest.shippingContact.address.countryCode":"country code required",
                "billingShippingRequest.shippingContact.address.zipCode":{
                    required:"Please provide zip code",
                    number:"It must be of integer type"
                },
                "billingShippingRequest.shippingContact.email":{
                    required:"Please provide a email id",
                    email:"eg xyz@gmail.com"
                },



                //submitPaymentRequest fields validation error messages starts from here

                "submitPaymentRequest.creditCard.cardHolderName":"Please provide a card holder name",
                "submitPaymentRequest.creditCard.cardNumber":{
                    required:"Provide a card number",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.cardMonth":{
                    required:"Provide a card month",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.cardYear":{
                    required:"Provide a card year",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.cid":{
                    required:"Provide a credit card cid",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.amount":{
                    required:"Provide a credit card amount",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.remBal":{
                    required:"Provide  credit card remaining balance",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.ccdId":{
                    required:"Provide a card ccdId",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.creditCard.expirationDate":{
                    required:"Provide a card number",
                    Date:"must be of type DD-MON-YYYY"
                },
                "submitPaymentRequest.promoCode.code":{
                    required:"Provide a code  ",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.promoCode.amount":{
                    required:"Provide a amount",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.promoCode.percetage":{
                    required:"Provide the percentage",
                    number:"must be of integer type"
                },
                "submitPaymentRequest.promoCode.promoId":{
                    required:"Provide a promoId",
                    number:"must be of integer type"
                }





                //rules and messages end here
            }
        });
    });

    </script>

    <style>
        body {background-color:#FFFFE3}
        h1   {color:blue}
        p    {color:green}
        sup  {color:red}
        legend {color:#FF19FF}
        tr  {width: 100%; height: 100%}
        div {background-color: #F5FFFA;}
        .addUpdate {box-shadow: 10px 10px 5px #888888;} /*to create shadow effect*/



        #myForm {
            width: 1300px;
        }
        #myForm label.error {
            margin-left: 10px;
            width: auto;
            display: inline-block;
            color: red;
        }
    </style>


</head>
<h2>Request page</h2>
<body>
<form:form  action="/test/response" modelAttribute="registeredCheckoutRequest" id="myForm" novalidate="novalidate">

<div class="addUpdate">
    <fieldset>
        <legend align="center">AddUpdateCartItemsRequest</legend>
        <div>
            <fieldset>
                <legend>Add Items to Cart</legend>
                <table id ="addItemTable" border="all">
                    <INPUT type="button" value="Add Row" onclick="addRow('addItemTable')" />
                    <INPUT type="button" value="Delete Row" onclick="deleteRow('addItemTable')" />
                    <tr>
                        <th>Remove?</th></br>
                        <th>S.No.</th></br>
                        <th>Sku Code </th></br>
                        <th>Quantity</th></br>
                        <th>Gift</th></br>
                    </tr>
                </table>
            </fieldset>
        </div>
        </br></br>
        </br></br>
        <div>
            <fieldset>
                <legend>User Information:</legend>
                <table>
                    <tr>

                        <td>First Name :<sup>*</sup><input type="text" name="addUpdateCartItemsRequest.user.names.firstName"  required="true" placeholder="first name" id = "UfirstName"><br></td>
                        <td> Middle Name:<input type="text" name="addUpdateCartItemsRequest.user.names.MiddleName" required="true"placeholder="middle name" id = "UMiddleName" ><br></td>
                        <td> Last Name:<sup>*</sup><input type="text" name="addUpdateCartItemsRequest.user.names.lastName"  required="true" placeholder="last name"id = "UlastName" ><br></td>

                    </tr>
                    <tr>
                        <td> Email:<sup>*</sup><input name="addUpdateCartItemsRequest.user.email" required="true" placeholder="eg:xyz@example.com" id = "Uemail"><br></td>
                        <td>Loyalty Id :<input type="text" name="addUpdateCartItemsRequest.user.loyaltyId"  required="true" placeholder="loyalty id" id = "UloyaltyId" ><br></td>
                        <td>Date Of Birth :<input type="text" name="addUpdateCartItemsRequest.user.dateOfBirth"  placeholder="eg:15-Apr-2001" required="true" id = "UdateOfBirth" ><br></td>
                    </tr>
                    <tr>
                        <td> Area Code:<sup>*</sup><input type="text" name="addUpdateCartItemsRequest.user.phone.areaCode" placeholder="eg 602" id = "UareaCode"></td>
                        <td> Exchange:<input type="text" name="addUpdateCartItemsRequest.user.phone.exchange" placeholder="exchange" id = "Uexchange"></td>
                        <td> Extension:<input type="text" name="addUpdateCartItemsRequest.user.phone.extension" placeholder="extension" id = "Uextension"></td>
                        <td> LoyaltyPostalCode:<input type="text" name="addUpdateCartItemsRequest.user.loyaltyPostalCode" placeholder="loyalty postal code" id = "UloyaltyPostalCode"></td>
                    </tr>
                    <tr>
                        <td>UserId :<sup>*</sup><input type="text" name="addUpdateCartItemsRequest.credentials.userId" required="true" placeholder="userid" id = "UuserId"><br></td></td>
                        <td>Password <sup>*</sup>:<input type="text" name="addUpdateCartItemsRequest.credentials.password" required="true" placeholder="password" id = "Upassword"><br></td>
                    </tr>
                    <tr>
                        <td>CheckOut :<input type="checkbox" name="addUpdateCartItemsRequest.checkOut" value="true" id = "UcheckOut"><br></td>
                        <td>CartId :<sup>*</sup><input type="text" name="addUpdateCartItemsRequest.cartId" placeholder="cartId number" required="true" id = "UcartId"><br></td>
                    </tr>
                </table>
            </fieldset>
        </div>




        </br></br>
    </fieldset>

</div>
</br></br>



</br></br>

<div class="addUpdate">
    <fieldset>
        <legend align="center">Billing Shipping request:</legend>
        </br></br>
        <div>
            <fieldset>
                <legend>Billing Contact</legend>
                <table>

                    <tr>
                        <td> First Name<sup>*</sup>:<input name="billingShippingRequest.billingContact.names.firstName" required="true" placeholder="first name" id="BfirstName"><br></td>
                        <td> Middle Name:<input type="text" name="billingShippingRequest.billingContact.names.middleName" placeholder="middle name" id = "BmiddleName" ><br></td>
                        <td> Last Name<sup>*</sup>:<input type="text" name="billingShippingRequest.billingContact.names.lastName" required="true" placeholder="last name" id = "BlastName"><br></td>
                    </tr>
                    <tr>
                        <td> Address 1:<input type="text" name="billingShippingRequest.billingContact.address.address1" placeholder="address1" id = "Baddress1"></td>
                        <td> Address 2:<input type="text" name="billingShippingRequest.billingContact.address.address2" placeholder="address2" id = "Baddress2"></td>
                        <td> State Code<sup>*</sup>:<input type="text" name="billingShippingRequest.billingContact.address.stateCode" required="true" placeholder="eg TN" id="BstateCode"></td>
                        <td> Country Code<sup>*</sup>:<input type="text" name="billingShippingRequest.billingContact.address.countryCode" required="true" placeholder="eg IN, IND" id="BcountryCode"></td>
                        <td> Zip Code<sup>*</sup>:<input type="text" name="billingShippingRequest.billingContact.address.zipCode" required="true" placeholder="eg:517129" id="BzipCode"></td>
                        <td> County Geo Code:<input type="text" name="billingShippingRequest.billingContact.address.countyGeoCode" placeholder="country geo code" id="BcountyGeoCode"></td>
                    </tr>
                    <tr>
                        <td> Area Code:<input type="text" name="billingShippingRequest.billingContact.phone.areaCode" placeholder="eg 602" id = "BareaCode"></td>
                        <td> Exchange:<input type="text" name="billingShippingRequest.billingContact.phone.exchange" placeholder="exchange" id="Bexchange"></td>
                        <td> Extension:<input type="text" name="billingShippingRequest.billingContact.phone.extension"placeholder="extension" id="Bextension"></td>
                    </tr>
                    <tr>
                        <td> Email:<sup>*</sup><input type="text" name="billingShippingRequest.billingContact.email" placeholder="xyz@example.com" id="Bemail" ></td>
                    </tr>
                </table>

            </fieldset>
        </div>
        </br></br>
        <input id="isSame" type="checkbox" onclick="toggle('.myClass', this)" name="billingShippingRequest.shippingAddressSameAsBillingAddress" value="true">shipping contact is same as billing contact


        <div class="myClass">
            <fieldset>
                <legend>Shipping Contact</legend>
                <table>

                    <tr>
                        <td> First Name<sup>*</sup>:<input type="text" name="billingShippingRequest.shippingContact.names.firstName"placeholder="first name" id="SfirstName" ><br></td>
                        <td> Middle Name:<input type="text" name="billingShippingRequest.shippingContact.names.middleName" placeholder="middle name" id="SmiddleName" ><br></td>
                        <td> Last Name<sup>*</sup>:<input type="text" name="billingShippingRequest.shippingContact.names.lastName" placeholder="last name" id="SlastName" ><br></td>
                    </tr>
                    <tr>
                        <td> Address 1:<input type="text" name="billingShippingRequest.shippingContact.address.address1"placeholder="address1"id="Saddress1"></td>
                        <td> Address 2:<input type="text" name="billingShippingRequest.shippingContact.address.address2" placeholder="addres2" id="Saddress2"></td>
                        <td> State Code<sup>*</sup>:<input type="text" name="billingShippingRequest.shippingContact.address.stateCode"placeholder="eg:TN"  id="SstateCode" ></td>
                        <td> Country Code<sup>*</sup>:<input type="text" name="billingShippingRequest.shippingContact.address.countryCode" placeholder="eg IN, IND" id="ScountryCode"></td>
                        <td> Zip Code<sup>*</sup>:<input type="text" name="billingShippingRequest.shippingContact.address.zipCode" placeholder="eg:517129" id="SzipCode" ></td>
                        <td> County Geo Code:<input type="text" name="billingShippingRequest.shippingContact.address.countyGeoCode" placeholder="country geo code" id="ScountyGeoCode"></td>
                    </tr>
                    <tr>
                        <td> Area Code:<input type="text"  name="billingShippingRequest.shippingContact.phone.areaCode" placeholder="eg 602" id="SareaCode"></td>
                        <td> Exchange:<input type="text" name="billingShippingRequest.shippingContact.phone.exchange"placeholder="exchange" id="Sexchange" ></td>
                        <td> Extension:<input type="text" name="billingShippingRequest.shippingContact.phone.extension"placeholder="extension" id="Sextension"></td>
                    </tr>
                    <tr>
                        <td> Email:<sup>*</sup><input type="text" name="billingShippingRequest.shippingContact.email" placeholder="eg:xyz@example.com" id="Semail" ></td>
                    </tr>

                </table>
            </fieldset>
        </div>
        </br></br>

        <div>
            <table>
                <tr>
                    <td>Shipping Method:<input type="text" name="billingShippingRequest.shippingMethod" placeholder="USND " id="SshippingMethod">

                            <%--<select name="billingShippingRequest.shippingMethod">--%>
                            <%--<option value="false" selected>select</option>--%>
                            <%--<option value="method1">method1</option>--%>
                            <%--<option value="method2">method2</option>--%>
                            <%--<option value="method3">method3</option>--%>
                            <%--<option value="method4">method4</option>--%>
                            <%--</select>--%>
                    </td>
                </tr>
                <tr>
                    <td > <input type="checkbox" name="billingShippingRequest.expeditedCheckout" value="true" id="SexpeditedCheckout"> Expedited Checkout


                    </td>
                    <td >  <input type="checkbox" name="billingShippingRequest.validateShippingMethod" value="true" id="SvalidateShippingMethod"> Validate ShippingMethod


                    </td>


                </tr>
            </table>
        </div>
        </br></br>


    </fieldset>
</div>
</br></br>
<div class="addUpdate">
    <fieldset>
        <legend align="center">Submit Payment Request </legend>

        <div>
            <fieldset>
                <legend> credit card details </legend>
                <table>

                    <tr>
                        <td>Card Holder Name<sup>*</sup>:<input type="text" name="submitPaymentRequest.creditCard.cardHolderName" required="true" placeholder="card holder name" id="CcardHolderName"></td>
                        <td> Card Number<sup>*</sup>:<input type="text" name="submitPaymentRequest.creditCard.cardNumber" required="true"  placeholder="eg:33910754123" id="CcardNumber"></td>
                        <td> Card brand<sup>*</sup>:<select name="submitPaymentRequest.creditCard.cardBrand" id="CcardBrand">
                            <option value="KOHLS_CHARGE">KOHLS_CHARGE</option>
                            <option value="AMERICAN_EXPRESS" > AMERICAN_EXPRESS</option>
                            <option value="DISCOVER_NETWORK" >DISCOVER_NETWORK</option>
                            <option value="MASTERCARD" >MASTERCARD</option>
                            <option value="VISA" > VISA</option>
                            <option value="KOHLS_GIFT_CARD" >KOHLS_GIFT_CARD </option>
                            <option value="KOHLS_MERCHANT_GIFT_CARD" > KOHLS_MERCHANT_GIFT_CARD</option>
                            <option value="KOHLS_CASH" selected>  KOHLS_CASH</option>
                            <option value="KOHLS_MERCHANT_CARD" >  KOHLS_MERCHANT_CARD</option>
                        </select>

                        </td>
                    </tr>
                    <tr>
                        <td>Card Month<sup>*</sup>:<input type="text" name="submitPaymentRequest.creditCard.cardMonth" required="true" placeholder="card month" id="CcardMonth"></td>
                        <td>Card Year<sup>*</sup>:<input name="submitPaymentRequest.creditCard.cardYear" required="true" placeholder="card year" id="CcardYear"></td>
                        <td>CID<sup>*</sup>:<input name="submitPaymentRequest.creditCard.cid" required="true" placeholder="Card id" id="Ccid"></td>
                    </tr>
                    <tr>
                        <td>Amount:<input name="submitPaymentRequest.creditCard.amount"  placeholder="eg:50000"  id="Camount"></td>
                        <td>Remaining Balance:<input name="submitPaymentRequest.creditCard.remBal" placeholder="eg:2000" id="CremBal" ></td>
                        <td>CCID:<input name="submitPaymentRequest.creditCard.ccdId" required="true" placeholder="ccid number" id="CccdId"></td>
                    </tr>
                    <tr>
                        <td>Expiration Date<sup>*</sup>:<input  name="submitPaymentRequest.creditCard.expirationDate" required="true" placeholder="eg:15-Apr-2001" id="CexpirationDate"></td>
                        <td><input type="checkbox" name="submitPaymentRequest.creditCard.expeditedCheckout" value="true" id="CexpeditedCheckout">Expedited checkout</td>
                        <td><input type="checkbox" name="submitPaymentRequest.creditCard.eligibleForExpeditedCheckout" value="true" id="CeligibleForExpeditedCheckout">Eligible for Expedited checkout</td>
                    </tr>
                </table>
            </fieldset>
        </div>


        <div>

            <fieldset>
                <legend> PromoCode details </legend>
                <table>

                    <tr>
                        <td>Code<sup>*</sup>:<input name="submitPaymentRequest.promoCode.code" required="true" placeholder="enter the code" id="Pcode"></td>
                        <td> Amount<sup>*</sup>:<input name="submitPaymentRequest.promoCode.amount" required="true" placeholder="eg:10000" id="Pamount"></td>
                        <td> PromoCode Type:<select name="submitPaymentRequest.promoCode.type" id="Ptype">
                            <option value="D" selected >D</option>
                            <option value="  DA" >  DA</option>
                            <option value=" DP" > DP</option>
                            <option value=" FS" > FS</option>
                            <option value=" PP" > PP</option>
                        </select>
                        </td>

                    </tr>
                    <tr>
                        <td>Percentage:<input name="submitPaymentRequest.promoCode.percentage" required="true" placeholder="eg:40" id="Ppercentage"></td>
                        <td>PromoId<sup>*</sup>:<input name="submitPaymentRequest.promoCode.promoId" required="true" placeholder="promoid number" id="PpromoId"></td>
                        <td>Offer Scope:<input name="submitPaymentRequest.promoCode.offerScope" required="true" placeholder="offerscope" id="PofferScope"></td>
                        <td><input type="checkbox" name="submitPaymentRequest.promoCode.applied" value="true" id="Papplied">Applied</td>
                    </tr>
                </table>
            </fieldset>
        </div>

</br></br>

        <tr>

            <td><input type="checkbox" name="submitPaymentRequest.expeditedCheckout" value="true" id="SexpeditedCheckou">Expedited checkout</td>
            <td><input type="checkbox" name="submitPaymentRequest.registered" value="true"  id="Sregistered">is Registered</td>
            <td><input type="checkbox" name="submitPaymentRequest.failfast" value="true" id="Sfailfast">Fail fast</td>
        </tr>
        </table>
    </fieldset>
    </div>

<p align="center">
    <input type="submit" value="Submit" id="Submit"> <input type="reset" value="Clear All" id="Clear All">
</p>

</form:form>
</body>
</html>

