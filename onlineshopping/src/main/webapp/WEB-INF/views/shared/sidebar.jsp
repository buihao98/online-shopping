<div class="col-lg-3">

	<h1 class="my-4">Phone Shop</h1>
	<div class="list-group">

		<c:forEach items="${categories }" var="category">
			<a href="${contextRoot }/show-category-${category.id}-products"
				class="list-group-item" id="a_${category.name }"><h3>${category.name}</h3></a>
		</c:forEach>
	</div>

</div>