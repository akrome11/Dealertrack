<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>


<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.FeatureShowcaseItemModel.class%>" />
    <img class="imageClass" src="${model.image}" /> <span class="textClass">${model.title}</span> ${model.link} ${model.description}