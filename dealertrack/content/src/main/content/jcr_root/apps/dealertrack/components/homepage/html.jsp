<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*,org.slf4j.*" %>
<%@include file="../global.jsp"%>
 
<cq:includeClientLib categories="homepage" />

<html>

<cq:include script="head.jsp" />

<body>

<div class="page-container"><!--page-container-->
	<div class="page-wrapper"><!--page-wrapper-->
		<br style="clear:both;" />
		<div class="page-content">
		<cq:include script="header.jsp" />
		<cq:include path="par-1" resourceType="foundation/components/parsys"/>
		</div>
	</div>
</div>

</body>


</html>