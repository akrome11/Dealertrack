<%@include file="../global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>
    
    <cq:includeClientLib categories="banner" />
    
    
<slice:lookup appName="dealertrack" var="model" type="<%=dealertrack.cms.aem.web.models.BannerModel.class%>" />

<div  style="background:url(${model.fileReference});" id="_bannerImage" class="image-wrapper">
    <div class="image-container">
        <div class="image-ref-point">
            <div class="image-copy">
                <div class="image-title-container">
                    <div id="_iconBox" class="image-banner-icon-box">
    					${model.color}
                    </div>
                    <div id="_bannerTitle" class="image-banner-title">
                        ${model.title}
                    </div>
                </div>
                <div class="text-container">
                        <h1 class="highlight ${model.opacityClass}">
                        ${model.description}
                    </h1> 
                </div>
		    </div>
	    </div>
    </div>
</div>