<!DOCTYPE HTML>
<html>
<head>
	<meta name="layout" content="default"/>
	<title></title>
</head>
<body>

<content tag="content">


<div class="banner">
	<div class="container">
		<div class="banner-bottom">
			<div class="banner-bottom-left">

			</div>
			<div class="banner-bottom-right">
				<div  class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
							<div class="banner-info">
								<h3>DSLR &amp; Mirrorless</h3>
								<p>Choose your camera body...</p>
							</div>
						</li>
						<li>
							<div class="banner-info">
								<h3>Lens Collection</h3>
								<p>Get best images with the perfect lens...</p>
							</div>
						</li>
						<li>
							<div class="banner-info">
								<h3>Support &amp; Accessories</h3>
								<p>Get perfect result with eight equipment...</p>
							</div>
						</li>
					</ul>
				</div>
				<!--banner-->
				<asset:javascript src="responsiveslides.min.js"/>
				<script>
					// You can also use "$(window).load(function() {"
					$(function () {
						// Slideshow 4
						$("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
								$('.events').append("<li>before event fired.</li>");
							},
							after: function () {
								$('.events').append("<li>after event fired.</li>");
							}
						});

					});
				</script>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="shop">
			<a href="/products">BROWSE COLLECTION NOW</a>
		</div>
	</div>
</div>
<!-- content-section-starts-here -->
<div class="container">
	<div class="main-content">
		<div class="online-strip">
			<div class="col-md-4 follow-us">
				<h3>follow us : <a class="twitter" href="#"></a><a class="facebook" href="#"></a></h3>
			</div>
			<div class="col-md-4 shipping-grid">
				<div class="shipping">
					<img src="/images/shipping.png" alt="" />
				</div>
				<div class="shipping-text">
					<h3>Free Shipping</h3>
					<p>on orders over $ 199</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 online-order">
				<p>Order online</p>
				<h3>Tel:999 4567 8902</h3>
			</div>
			<div class="clearfix"></div>
		</div>



	</div>

</div>
<div class="other-products">
	<style>
	.collections {
		margin-bottom: 80px;
	}
	.collections img{
		width: 250px;
	}
	</style>
	<g:each in="${collections}" var="coll">
		<div class="container collections">
			<h3 class="like text-center" >${coll.title}</h3>
			<ul id="${coll.name}" class="flexiselDemo3">
				<g:each in="${coll.products}" var="p">
					<li>
						<g:link controller="shop" action="details" params="[product_id: p.id]">
							<img src="${p.mainPhoto.url}" class="img-responsive" alt="" />
						</g:link>
						<div class="product liked-product simpleCart_shelfItem">
							<g:link  controller="shop" action="details" params="[product_id: p.id]" class="like_name" >${p.title}</g:link>
							<p><a class="item_add add_to_cart_button" href="#" data-product_id="${p.id}"><i></i> <span class=" item_price">$ ${p.price}</span></a></p>
						</div>
					</li>
				</g:each>
			</ul>
		</div>
	</g:each>
	<asset:javascript src="cart.js"/>
	<script type="text/javascript">
		function slider(selector, autoplay){
			$(selector).flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: autoplay,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint:480,
						visibleItems: 1
					},
					landscape: {
						changePoint:640,
						visibleItems: 2
					},
					tablet: {
						changePoint:768,
						visibleItems: 3
					}
				}
			});
		}
		$(function() {
			slider("#featured", 3000);
			slider("#deals", 3200);
			slider("#recently_added", 2900);
		});
	</script>
	<asset:javascript src="jquery.flexisel.js"/>
</div>
<!-- content-section-ends-here -->

</content>




</body>
</html>