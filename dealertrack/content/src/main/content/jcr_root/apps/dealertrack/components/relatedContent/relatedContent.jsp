<%@include file="../global.jsp"%>
<%@ page import="java.util.Iterator,
    com.day.text.Text,
    com.day.cq.wcm.api.PageFilter, 
    com.day.cq.wcm.api.Page, 
    com.day.cq.commons.Doctype, 
    org.apache.commons.lang.StringEscapeUtils" %>
    
    <cq:includeClientLib categories="relatedContent" />
    
<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.RelatedContentModel.class%>" />
<ul class="relatedList">
	<c:forEach var="child" items="${model.childrenList}">
    <li class="relatedListItem">${child.color}<a href="${child.path}.html"><c:out value="${child.title}" /></a></li>
	</c:forEach>
</ul>