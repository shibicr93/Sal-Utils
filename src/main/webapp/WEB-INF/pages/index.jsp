<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

    <title>HarnessTest</title>
<script type="application/javascript">
    function getCount(){
        var count = document.getElementById(count).value;
        alert(count);
        return count;
    }
</script>

</head>
<body>

<h2>SAL WORKFLOW TEST</h2>
<form method="get" action="/test/addItem">
    <table>
        <tr>
            <td> First Name: <input type="text" id="fName" name="fName"></td>
        </tr>

    </table>
</form>

<form:form method="POST" action="/test/addItem" modelAttribute="addItemsToCart">


    <table>
            <tr>
            <th>S.No</th>
            <th>product_id</th>
            <th>sku_code</th>
            <th>quantity</th>
         </tr>
       <%
        if (request.getParameter("count")!=null){
           String count;
           try{
               count = request.getParameter("count");
           }catch (Exception e)
           {
               count = "0";
               e.getMessage();
           }

           int ctr = Integer.parseInt(count);
           for(int i=0 ;i<ctr;i++){
       %>
            <tr>
                <td align="center"><%=i%></td>
                <td><input name="addItemsToCart[<%=i%>].product_id" value="${addItemToCart.product_id}" type="text"/></td>
                <td><input name="addItemsToCart[<%=i%>].sku_code" value="${addItemToCart.sku_code}" type="text"/></td>
                <td><input name="addItemsToCart[<%=i%>].quantity" value="${addItemToCart.quantity}" type="text"/></td>

                </tr>
        <%
            }}
        %>


    </table>
    <input type="submit" value="submit" /><br><input type="submit" value="add"/>
</form:form>
</body>
</html>