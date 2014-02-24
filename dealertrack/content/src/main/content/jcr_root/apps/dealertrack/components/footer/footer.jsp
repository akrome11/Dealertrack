<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@include file="../global.jsp"%> 

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.FooterModel.class%>" />
	<c:forEach var="child" items="${model.linkList}" >
        <c:out value="${child.title}" /><c:out value="${child.link}" />
        <br />
	</c:forEach>