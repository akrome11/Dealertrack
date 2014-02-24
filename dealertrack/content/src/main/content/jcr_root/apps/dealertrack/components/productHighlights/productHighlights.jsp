<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>
    
    <cq:includeClientLib categories="productHighlights" />

    <slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.ProductHighlightsModel.class%>" />
    

	<div>
	<div class="highlight1">
<h3 class='title'>${model.product1title}</h3>
	${model.product1text}

	</div>

	<div class="highlight2">

<h3 class='title'>${model.product2title}</h3>
	${model.product2text}

	</div>
	
		<div class="highlight3">

        <h3 class='title'>${model.product3title}</h3>
	${model.product3text}

	</div>
	</div>