<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.karbyn.cms.aem.models.items.*,
    com.day.cq.wcm.foundation.Image " %>


<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.ImageModel.class%>" />
<img src="${model.fileReference}" />