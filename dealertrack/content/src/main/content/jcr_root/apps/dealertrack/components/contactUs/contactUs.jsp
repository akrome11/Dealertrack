<%@include file="/libs/foundation/global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>

    <cq:includeClientLib categories="contactUs" />

    <slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.ContactUsModel.class%>" />

    <div class="contact-container">
    <span class="contact-header">Contact Us</span>
    <br/>
    <div class="contact-content">

    <c:forEach var="child" items="${model.contactItemList}">
    	<c:out value="${child.title}" /> 
        <c:out value="${child.number}" />
        <c:forEach var="hours" items="${child.hours}">
            <c:out value="${hours.hours}" />
        </c:forEach>
	</c:forEach>

    

</div>
</div>