<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
        <title> Submit payment </title>
	</head>
	<body>
    <form:form  action="/test/submitPaymentResponse" method="post" modelAttribute="registeredCheckoutRequest">
	<div>
			<fieldset>
			<legend>Submit Payment Request </legend>
			
					<div>
						<fieldset>
						<legend> credit card details </legend>
						<table>

                        <tr>
                            <td>Card Holder Name:<input type="text" name="submitPaymentRequest.creditCard.cardHolderName" required="true" ></td>
                            <td> Card Number:<input type="text" name="submitPaymentRequest.creditCard.cardNumber"required="true"   ></td>
                         <td> Card brand:<select name="submitPaymentRequest.creditCard.cardBrand">
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
						<td>Card Month:<input type="text" name="submitPaymentRequest.creditCard.cardMonth" required="true"></td>
						<td>Card Year:<input name="submitPaymentRequest.creditCard.cardYear" required="true"></td>
						<td>CID:<input name="submitPaymentRequest.creditCard.cid" required="true"></td>
						</tr>
						<tr>
						<td>Amount:<input name="submitPaymentRequest.creditCard.amount"  ></td>
						<td>Remaining Balance:<input name="submitPaymentRequest.creditCard.remBal"  ></td>
						<td>CCID:<input name="submitPaymentRequest.creditCard.ccdId" required="true" ></td>
						</tr>
						<tr>
						<td>Expiration Date:<input  name="submitPaymentRequest.creditCard.expirationDate" required="true" ></td>
						<td><input type="checkbox" name="submitPaymentRequest.creditCard.expeditedCheckout" value="true">Expedited checkout</td>
						<td><input type="checkbox" name="submitPaymentRequest.creditCard.eligibleForExpeditedCheckout" value="true">Eligible for Expedited checkout</td>
						</tr>
						</table>
						</fieldset>
					</div>
			
			
		<div>
		
			<fieldset>
			<legend> PromoCode details </legend>
			<table>

                        <tr>
                            <td>Code:<input name="submitPaymentRequest.promoCode.code" required="true"></td>
                            <td> Amount:<input name="submitPaymentRequest.promoCode.amount" required="true"  ></td>
                            <td> PromoCode Type:<select name="submitPaymentRequest.promoCode.type">
                                <option value="D" selected >D</option>
                                <option value="  DA" >  DA</option>
                                <option value=" DP" > DP</option>
                                <option value=" FS" > FS</option>
                                <option value=" PP" > PP</option>
                            </select>
                            </td>

                        </tr>
						<tr>
						<td>Percentage:<input name="submitPaymentRequest.promoCode.percentage" required="true"></td>
						<td>PromoId:<input name="submitPaymentRequest.promoCode.promoId" required="true"></td>
						<td>Offer Scope:<input name="submitPaymentRequest.promoCode.offerScope" required="true"></td>
						<td><input type="checkbox" name="submitPaymentRequest.promoCode.applied" value="true">Applied</td>
						</tr>					
			</table>
			</fieldset>
		</div>
			
		
	
		<tr>
						
						<td><input type="checkbox" name="submitPaymentRequest.expeditedCheckout" value="true">Expedited checkout</td>
						<td><input type="checkbox" name="submitPaymentRequest.registered" value="true" >is Registered</td>
						<td><input type="checkbox" name="submitPaymentRequest.failfast" value="true">Fail fast</td>
		</tr>
		
		
		
		
		
		
		
		
			</table>	
	</fieldset>
	<input type="submit" value="Submit">

		</div>
    </form:form>
	</body>
</html>