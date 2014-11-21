<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>
    AddUpdateItemsInfo:
</title>
<head>
    <script type="text/javascript"
            src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


       </head>
<body>
<fieldset>
    <legend>AddUpdateItems:</legend>
<form:form method="POST" action="/test/addItem" commandName="addUpdateCartItemsRequest">
<table>
        <tr>
        <td>Email :</td>
        <td><form:input path="${addUpdateCartItemsRequest.user.email}" /></td>
            </tr>

        <tr>
            <td>FirstName :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.names.firstName}" /></td>
            </tr>

        <tr>
            <td>LastName :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.names.lastName}" /></td>
            </tr>

        <tr>
        <td>MiddleName :</td>
        <td><form:input path="${addUpdateCartItemsRequest.user.names.middleName}" /></td>
            </tr>

        <tr>
        <td>LoyaltyId :</td>
        <td><form:input path="${addUpdateCartItemsRequest.user.loyaltyId}" /></td>
            </tr>

        <tr>
            <td>DateOfBirth :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.dateOfBirth}" /></td>
            </tr>
        <tr>
            <td>AreaCode :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.phone.areaCode}" /></td>
            </tr>
        <tr>
            <td>Exchange :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.phone.exchange}" /></td>
            </tr>
        <tr>
            <td>Extension :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.phone.extension}" /></td>
            </tr>
        <tr>
            <td>LoyaltyPostalCode :</td>
            <td><form:input path="${addUpdateCartItemsRequest.user.loyaltyPostalCode}" /></td>
            </tr>
        <tr>
            <td>UserId :</td>
            <td><form:input path="${addUpdateCartItemsRequest.credentials.userId}" /></td>
            </tr>
    <tr>
        <td>password :</td>
        <td><form:input path="${addUpdateCartItemsRequest.credentials.password}" /></td>
        </tr>


    <tr>
        <td>CheckOut :</td>
        <td><input type="checkbox" name="${addUpdateCartItemsRequest.checkOut}"  value="true" />True</td>
 </tr>
    <%--<tr>--%>
        <%--<td>SkuCode:</td>--%>
        <%--<td><form:input path="${addUpdateCartItemsRequest.addItemList.skuCode}" /></td>--%>

    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td>Quantity:</td>--%>
        <%--<td><form:input path="${addUpdateCartItemsRequest.addItemList.quantity}" /></td>--%>
    <%--</tr>--%>

    <%--<tr>--%>
        <%--<td>Gift :</td>--%>
        <%--<td><form:radiobutton path="${addUpdateCartItemsRequest.addItemList.gift}" value="true" />True</td>--%>
        <%--<td><form:radiobutton path="${addUpdateCartItemsRequest.addItemList.gift}" value="false"  />False</td>--%>

    <%--</tr>--%>
</table>
        <h2>Add Items to Cart:</h2>


            <%  int x = 0; %>
    <script>
        $(document).ready(function() {
            var max_fields      = 10; //maximum input boxes allowed
            var wrapper         = $(".input_fields_wrap"); //Fields wrapper
            var add_button      = $(".add_field_button"); //Add button ID

            var x = 1; //initlal text box count


            $(add_button).click(function(e){ //on add input button click
                e.preventDefault();
                if(x < max_fields){ //max input box allowed
                     x++;

                 //text box increment
                    $(wrapper).append('<div><tr><td><%=++x%></td><td><input type="text" name="addUpdateCartItemsRequest.addItemList[<%=++x%>].skuCode" value="${addUpdateCartItemsRequest.addItemList.skuCode}" ></td> '
                            +'<td><input type="text" name="addUpdateCartItemsRequest.addItemList[<%=++x%>].quantity" value="${addUpdateCartItemsRequest.addItemList.skuCode}"</td></tr></div>')}                         //add input box
                    //<a href="#" class="remove_field">Remove</a>

            });

            $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
                e.preventDefault(); $(this).parent('div').remove(); x--;
            })
        });
    </script>

        <div class="input_fields_wrap">
            <button class="add_field_button">Add More Fields</button>
            <div><tr><td>s.no</td><td>sku code</td><td>quantity</td></tr>  </div>

        </div>


        <button class="xxx" type="submit">Submit</button>




        <h2>Update Items to Cart:</h2>



        <script>
        $(document).ready(function() {
        var max_fields      = 10; //maximum input boxes allowed
        var wrapper         = $(".input_fields_wrap1"); //Fields wrapper
        var add_button      = $(".add_field_button1"); //Add button ID

        var x = 1; //initlal text box count
        $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
        x++; //text box increment
        $(wrapper).append('<div><input type="text" name="mytext[]"/></div>'); //add input box
        //<a href="#" class="remove_field">Remove</a>
        }
        });

        $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
        })
        });
        </script>

        <div class="input_fields_wrap1">
            <button class="add_field_button1">Update More Fields</button>
            <div><input type="text" name="mytext[]"></div>
        </div>

        <button class="xxx" type="submit">Submit</button>





        <h2>RemoveItems To Cart: </h2>



        <script>
        $(document).ready(function() {
        var max_fields      = 10; //maximum input boxes allowed
        var wrapper         = $(".input_fields_wrap2"); //Fields wrapper
        var add_button      = $(".add_field_button2"); //Add button ID

        var x = 1; //initlal text box count
        $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
        x++; //text box increment
        $(wrapper).append('<div><input type="text" name="mytext[]"/></div>'); //add input box
        //<a href="#" class="remove_field">Remove</a>
        }
        });

        $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
        })
        });
        </script>
        <div class="input_fields_wrap2">
            <button class="add_field_button2">Remove More Fields</button>
            <div><input type="text" name="mytext[]"></div>
        </div>

        <button class="xxx" type="submit">Submit</button>

    </form:form>
</body>
</html>





































































































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

