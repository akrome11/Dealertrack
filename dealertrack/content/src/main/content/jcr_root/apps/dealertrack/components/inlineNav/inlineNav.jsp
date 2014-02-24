<%@include file="../global.jsp"%>
<%@ page import="java.util.Iterator,
    com.day.text.Text,
    com.day.cq.wcm.api.PageFilter, 
    com.day.cq.wcm.api.Page, 
    com.day.cq.commons.Doctype, 
    org.apache.commons.lang.StringEscapeUtils" %>
    
    <cq:includeClientLib categories="inlineNav" />

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.InlineNavModel.class%>" />
<ul class="inlineNav">
	<c:forEach var="child" items="${model.childrenList}">
    <li class="inlineNavItem"> 
    	<c:out value="${child.color}" /> <c:out value="${child.title}" /><br />
        <a href="${child.path}.html"><c:out value="Learn More" /></a></li>
	</c:forEach>
</ul>