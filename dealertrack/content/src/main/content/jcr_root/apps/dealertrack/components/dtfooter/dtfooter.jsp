<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@include file="../global.jsp"%> 

<cq:includeClientLib categories="footer" />

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.FooterModel.class%>" />
	<c:forEach var="child" items="${model.linkList}" >
        <a href="${child.link}"><c:out value="${child.title}" /></a>
        <br />
	</c:forEach>
${model.bottomRichText}
${model.sideRichText}