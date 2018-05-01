<%@ include file="template/header.jsp" %>

<div class="continer-wrapper">
	<div class="container">
		<div class="page-header">
		<h1>Administrator Page</h1>
		<p class="lead">Welcome to the Administrator Page!!..</p>
		</div>
		<c:if test="${pageContext.request.userPrincipal.name !=null}">
		<h2>Welcome ${pageContext.request.userPrincipal.name !=name}</h2>
		
		</c:if>
	</div>
</div>

<%@ include file="template/footer.jsp" %>