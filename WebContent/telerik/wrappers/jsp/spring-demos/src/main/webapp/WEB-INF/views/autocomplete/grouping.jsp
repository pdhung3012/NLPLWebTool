<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/autocomplete/customers/read" var="readUrl" />

<demo:header />
	<div class="demo-section k-content">
	    <h4>Find a Customer</h4>

        <kendo:autoComplete name="customers" dataTextField="contactName" filter="contains" style="width:100%;">
            <kendo:dataSource serverFiltering="true">
            	<kendo:dataSource-group>
		        	<kendo:dataSource-groupItem field="country">
		        	</kendo:dataSource-groupItem>
	        	</kendo:dataSource-group>
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${readUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
	                	<script>
		                	function parameterMap(options,type) {
		                		return JSON.stringify(options);
		                	}
	                	</script>
	                </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
                <kendo:dataSource-schema data="data" total="total">
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:autoComplete>

        <div class="demo-hint">Hint: type "an"</div>
    </div>
<demo:footer />
