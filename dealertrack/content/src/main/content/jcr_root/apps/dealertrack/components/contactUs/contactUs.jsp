<%@include file="/libs/foundation/global.jsp"%> 
<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*" %>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image" %>
    
    <cq:includeClientLib categories="contactUs" />
    
    <div class="contact-container">
    <span class="contact-header">Contact Us</span>
    <br/>
    <div class="contact-content">
    
<%

	//String[] hours = {""};

try{
	Resource contactResource = resource.getChild("contact");
	
	
	Iterator<Resource> childResources = contactResource.listChildren();
	
	while (childResources.hasNext()) 
	{
		Resource childResource = childResources.next();
		
		ValueMap childProperties = childResource.adaptTo(ValueMap.class);
		
		String text = childProperties.get("title", String.class);
		String number = childProperties.get("phone", String.class);
		String hours[] = childProperties.get("hours", String[].class);;
		
		out.write("<b>"+text+"</b>");
		out.write("<br/>");
		out.write(number);
		out.write("<br/>");
		if (hours != null)
		{
			for (int i = 0; i < hours.length; i++)
			{
		out.write(hours[i]);
		out.write("<br/>");
			}
		}
		
	}
}
	catch(Exception e){
		log.error("This node doesn't exsist", e);
	}

%>
</div>
</div>