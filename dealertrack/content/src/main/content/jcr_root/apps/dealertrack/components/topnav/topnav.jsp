<%@include file="../global.jsp"%>

<%@ page import="java.util.Iterator,
	com.day.text.Text,
	com.day.cq.wcm.api.PageFilter, 
	com.day.cq.wcm.api.Page, 
	com.day.cq.commons.Doctype, 
	org.apache.commons.lang.StringEscapeUtils,
	com.day.cq.wcm.foundation.Navigation" %>

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.TopNavModel.class%>" />

<c:forEach var="child" items="${model.navList}">
    <c:choose>
    <c:when test="${child.type == 'NODE_OPEN'}">
        <ul>
    </c:when>
        <c:when test="${child.type == 'ITEM_BEGIN'}">
            <c:choose>
            <c:when test="${child.hasChildren} == 'true'">
                <li class='noleaf'><a href='${child.path}.html'>${child.title}</a>
			</c:when>
            <c:otherwise>
                <li><a href='${child.path}.html'>${child.title}</a>
			</c:otherwise>
        </c:choose>
    </c:when>
            <c:when test="${child.type == 'ITEM_END'}">
                </li>
    </c:when>
                <c:when test="${child.type == 'NODE_CLOSE'}">
                    </ul>
    </c:when>
</c:choose>
</c:forEach>

<div style="clear:both"></div>