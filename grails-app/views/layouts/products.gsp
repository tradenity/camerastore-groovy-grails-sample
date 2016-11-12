<!DOCTYPE HTML>
<html>
<head>
	<title></title>
	<meta name="layout" content="default"/>
</head>
<body>


<content tag="content">

	<!-- content-section-starts -->
	<div class="container">
		<div class="products-page">

			<div class="products">
				<div class="product-listy">
					<h2>Browse By Brand</h2>
					<ul class="product-list">
						<g:each in="${brands}" var="brand">
							<li><g:link controller="shop" action="brands" params="[brand_id: brand.id]" >${brand.title}</g:link></li>
						</g:each>
					</ul>
				</div>
			</div>

			<g:pageProperty name="page.product_content" />
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- content-section-ends -->
	<div class="other-products">
		<div class="container">
			<h3 class="like text-center">${featured.title}</h3>
			<ul id="flexiselDemo3">
				<g:each in="${featured.products}" var="p">
				<li>
					<g:link  controller="shop" action="details" params="[product_id: p.id]">
						<img src="${p.mainPhoto.url}" style="width: 220px;" class="img-responsive"/>
					</g:link>
					<div class="product liked-product simpleCart_shelfItem">
						<g:link  controller="shop" action="details" params="[product_id: p.id]" class="like_name" >${p.title}</g:link>
						<p><a class="item_add add_to_cart_button" href="#" th:attr="data-product_id=${p.id}"><i></i> <span class=" item_price" th:text="${p.price}">$759</span></a></p>
					</div>
				</li>
				</g:each>
			</ul>
			<asset:javascript src="cart.js"/>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo3").flexisel({
						visibleItems: 4,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,
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

				});
			</script>
			<asset:javascript src="jquery.flexisel.js"/>
		</div>
	</div>
	<!-- content-section-ends-here -->


</content>

</body>
</html>