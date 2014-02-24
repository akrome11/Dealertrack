<%@page import="java.util.*,com.day.cq.wcm.api.*,org.apache.sling.api.*,org.slf4j.*" %>
<%@include file="../global.jsp"%>

<div class="header"><!--header-->
    <div class="logo">
        <a href="/">
            <cq:include path="logo-ipar" resourceType="foundation/components/iparsys"/>
        </a>
    </div>
    <div class="header-content"><!--header-content-->
        <div class="country">
            <cq:include path="country-ipar" resourceType="foundation/components/iparsys"/>
        </div>
       <cq:include path="phone-ipar" resourceType="foundation/components/iparsys"/>
        <div class="home-login-container">
            <div class="loginField-container">
                <div>
                    
                </div>
        	</div>
        </div>
    </div><!--header-content-->
</div><!--header-->
<div id="_navigation" class="navigation">
    <cq:include path="header-par" resourceType="foundation/components/parsys"/>
</div>