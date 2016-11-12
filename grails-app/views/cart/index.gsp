<!DOCTYPE HTML>
<html>
<head>
	<title></title>
</head>
<body>
<g:applyLayout name="default">
	<content tag="content">
		<style>
		.cart-item-info span{
			float: inherit;
		}

		</style>

		<script>
			$(function(){
				var cart_total = $("#cart_total");
				var cart_items_count = $("#cart_items_count");

				$(".deleteItem").click(function(){
					var itemId = $(this).data("itemId");
					var url = "/cart/remove/"+itemId;
					$.ajax(url, {
						method: 'POST',
						success: function(result){
							console.log(result);
							if(result.status == 'success') {
								cart_total.text(result.total);
								cart_items_count.text(result.count);
								$("#" + itemId).remove();
							}else{
								alert(result.message);
							}
						}
					});
					return false;
				});
			});
		</script>

		<div class="cart-items">
			<div class="container">
				<div class="dreamcrub">
					<ul class="breadcrumbs">
						<li class="home">
							<a href="/" title="Go to Home Page">Home</a>&nbsp;
							<span>&gt;</span>
						</li>
						<li class="women">
							Cart
						</li>
					</ul>
					<ul class="previous">
						<li><a href="/products">Continue shopping</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<h2>MY SHOPPING CART </h2>
				<g:if test="${cart.items.empty}">
					<h1>No Items in your cart yet</h1>
				</g:if>
				<g:else>
				<div class="cart-gd">

					<g:each in="${cart.items}" var="item">
					<div class="cart-header" id="${item.id}">

						<a href="#" class="close1 deleteItem" data-item-id="${item.id}"> </a>

						<div class="cart-sec simpleCart_shelfItem">
							<div class="cart-item cyc">
								<img src="${item.product.mainPhoto.url}" class="img-responsive" alt="" />
							</div>
							<div class="cart-item-info">
								<h3><a href="#"> ${item.product.title} </a></h3>

								<div class="delivery">
									<p><span>Item Unit Price : $</span> <span>${item.product.price}</span></p>
									<div class="clearfix"></div>
									<p><span>Quantity : </span> <span>${item.quantity}</span></p><br>
									<div class="clearfix"></div>
									<p><span>Item Total Price : $</span> <span>${item.total}</span></p>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="clearfix"></div>

						</div>
					</div>
					</g:each>
					<div style="margin-top: 50px; text-align: right;">
						<g:link controller="orders" action="checkout" class="big_button">Checkout</g:link>
					</div>
				</div>
				</g:else>
			</div>
		</div>
		<!-- //checkout -->

	</content>
</g:applyLayout>
</body>
</html>