<!DOCTYPE HTML>
<html>
<head>
	<title></title>
</head>
<body>
<g:applyLayout name="products">
	<content tag="product_content">


		<!-- content-section-starts -->


		<div class="new-product">
			<div class="new-product-top">
				<ul class="product-top-list">
					<li><a href="/">Home</a>&nbsp;<span>&gt;</span></li>
					<li><span class="act" th:text="${breadcrumb}">Best Sales</span>&nbsp;</li>
					<li><span class="act" th:text="${breadcrumbName}">Best Sales</span>&nbsp;</li>
				</ul>
				<p class="back"><a href="/products">Browse all products</a></p>
				<div class="clearfix"></div>
			</div>
			<div class="mens-toolbar">
				<div class="sort">
					<div class="sort-by">
						<label>Sort By</label>
						<select>
							<option value="">Position</option>
							<option value="">Name</option>
							<option value="">Price</option>
						</select>
						<a href=""><img src="/images/arrow2.gif" alt="" class="v-middle"/></a>
					</div>
				</div>
				<ul class="women_pagenation">
					<li>Page:</li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
				<div class="cbp-vm-options">
					<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
					<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
				</div>
				<div class="pages">
					<div class="limiter visible-desktop">
						<label>Show</label>
						<select>
							<option value="" selected="selected">9</option>
							<option value="">15</option>
							<option value="">30</option>
						</select> per page
					</div>
				</div>
				<div class="clearfix"></div>
				<ul>
					<g:each in="${products}" var="p">
						<li>
							<div>
								<a class="cbp-vm-image" href="/products/${p.id}">
									<div class="simpleCart_shelfItem">
										<div class="view view-first">
											<div class="inner_content clearfix">
												<div class="product_image">
													<img src="${p.mainPhoto.url}" class="img-responsive" alt=""/>
													<div class="mask">
														<div class="info">Quick View</div>
													</div>
													<div class="product_container">
														<div class="cart-left">
															<p class="title">${p.title}</p>
														</div>
														<div class="pricey"><span class="item_price">$ ${p.price}</span></div>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</a>

								<div class="cbp-vm-details">${p.shortDescription}</div>
								<a class="cbp-vm-icon cbp-vm-add item_add add_to_cart_button" data-product_id="${p.id}" href="#">Add to cart</a>
							</div>
						</li>
					</g:each>
				</ul>
			</div>
			<asset:javascript src="cbpViewModeSwitch.js"/>
			<asset:javascript src="classie.js"/>
		</div>


		<!-- content-section-ends-here -->


	</content>
</g:applyLayout>
</body>
</html>