<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>

<cq:includeClientLib categories="resourceComponent" />


<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.ResourceComponentModel.class%>" />
    <c:forEach var="i" begin="1" end="${model.number}">
        <c:set var="path" value="resourceComponent${i}"/>
        <cq:include path="${path}" resourceType = "dealertrack/components/resourceItem" />
	</c:forEach>
