<div class="container">

	<div class="row">

		<!-- /.col-lg-3 -->
		<%@include file="./shared/sidebar.jsp"%>

		<div class="col-md-9">

			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
						<ol class="breadcrumb">
							<li class="active"><h2>All Products</h2></li>
						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">
							<li class="active"><h2>${category.name }</h2></li>
						</ol>
					</c:if>

				</div>
			</div>


			<!-- /.row -->

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

</div>
