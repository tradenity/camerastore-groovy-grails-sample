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
                    <li>
                        <a href="/orders" title="Go to Orders Page">Orders</a>&nbsp;
                        <span>&gt;</span>
                    </li>
                    <li class="women">
                        Order Details
                    </li>
                </ul>
                <ul class="previous">
                    <li><a href="/orders">Back To Orders List Page</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <h2>Order Details </h2>
            <table class="table">
                <tbody>
                <tr>
                    <td colspan="2">
                        <h4 style="text-align: center;">Summery</h4>
                    </td>
                </tr>
                <tr>
                    <th>Order ID</th>
                    <td>${order.id}</td>
                </tr>
                <tr>
                    <th>Creation Date</th>
                    <td>${order.createdAt}</td>
                </tr>
                <tr>
                    <th>Total price</th>
                    <td>${order.total}</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td>${order.status}</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h4 style="text-align: center;">Item details</h4>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${order.items}" var="i">
                            <tr>
                                <td>${i.product.title}</td>
                                <td>${i.quantity}</td>
                                <td>${i.unitPrice}</td>
                                <td>${i.total}</td>
                            </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- //checkout -->
</content>
</body>
</html>