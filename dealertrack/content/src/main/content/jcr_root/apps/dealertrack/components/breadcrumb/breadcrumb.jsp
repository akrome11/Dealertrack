<%@include file="../global.jsp"%>
<%@ page import="java.util.Iterator,
    com.day.text.Text,
    com.day.cq.wcm.api.PageFilter, 
    com.day.cq.wcm.api.Page, 
    com.day.cq.commons.Doctype, 
    org.apache.commons.lang.StringEscapeUtils" %>
    
<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.BreadcrumbModel.class%>" />
    ${model.curPagePath}