<%@include file="../global.jsp"%>
<%@ page import="java.util.Iterator,
    com.day.text.Text,
    com.day.cq.wcm.api.PageFilter, 
    com.day.cq.wcm.api.Page, 
    com.day.cq.commons.Doctype, 
    org.apache.commons.lang.StringEscapeUtils" %>

<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.IFrameModel.class%>" />
    <iframe src="${model.path}" frameborder="${model.frameBorder}" align="${model.align}" height="${model.height}" width="${model.width}" marginheight="${model.marginHeight}" marginwidth="${model.marginWidth}" naem="${model.name}" scrolling="${model.scrolling}" ${model.seamlessString}></iframe>