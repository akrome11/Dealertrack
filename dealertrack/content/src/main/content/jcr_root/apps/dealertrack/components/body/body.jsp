<%@include file="/libs/foundation/global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>
    
    <cq:includeClientLib categories="body" />
    
<%

	String heading = properties.get("heading","");
	String headingClass = properties.get("headingClass","");
	String text = properties.get("text", "");
	%>
	<<%out.write(headingClass);%>> <% out.write(heading); %></<%out.write(headingClass);%>>
	
<%	
	out.write(text);
%>