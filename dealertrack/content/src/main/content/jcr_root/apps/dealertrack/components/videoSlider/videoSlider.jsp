<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>

<cq:includeClientLib categories="videoSlider" />

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.VideoSliderModel.class%>" />
    <c:forEach var="i" begin="1" end="${model.number}">
        <c:set var="path" value="videoSlider${i}"/>
        <cq:include path="${path}" resourceType = "dealertrack/components/videoSliderItem" />
	</c:forEach>