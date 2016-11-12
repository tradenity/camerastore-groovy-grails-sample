<!DOCTYPE HTML>
<html>
<head>
    <meta name="layout" content="simple"/>
    <title></title>
</head>
<body>

<content tag="content">
    <!-- checkout -->
    <div class="cart-items">
        <div class="container">
            <div class="dreamcrub">
                <ul class="breadcrumbs">
                    <li class="home">
                        <a href="/" title="Go to Home Page">Home</a>&nbsp;
                        <span>&gt;</span>
                    </li>
                    <li class="women">
                        Orders
                    </li>
                </ul>
                <ul class="previous">
                    <li><g:link controller="shop" action="products">Continue Shopping</g:link></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <h2>MY ORDERS </h2>
            <g:if test="${orders.isEmpty()}">
            <div >
                <h1>You do not have any orders yet.</h1>
            </div>
            </g:if>
            <g:else>
            <div class="cart-gd">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Creation Date</th>
                        <th>Total Price</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${orders}" var="o">
                    <tr>
                        <td>
                            <g:link controller="orders" action="show" params="[orderId: o.id]"> ${o.id}</g:link>
                        </td>
                        <td>${o.createdAt}</td>
                        <td>${o.total}</td>
                        <td>${o.status}</td>
                        <td>
                            <g:form controller="orders" action="refund" id="${o.id}" method="post">
                                <input type="submit" value="Refund"/>
                            </g:form>
                        </td>
                    </tr>
                    </g:each>
                    </tbody>
                </table>

            </div>
            </g:else>
        </div>
    </div>

    <!-- //checkout -->


</content>
</body>
</html>