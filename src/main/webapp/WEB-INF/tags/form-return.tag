<%--
- form-return.tag
-
- Copyright (C) 2012-2021 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>
 
 <%@tag language="java" body-content="empty"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>
 
<%@attribute name="code" required="true" type="java.lang.String"%>
<%@attribute name="action" required="false" type="java.lang.String"%>

<jstl:choose>
	<jstl:when test="${action == null}">
		<jstl:set var="click_script" value="redirect(popReturnUrl())"/>
	</jstl:when>
	<jstl:otherwise>
		<jstl:set var="click_script" value="clearReturnUrl(); redirect('${action}')"/>
	</jstl:otherwise>
</jstl:choose>

<button type="button" class="btn btn-default" onclick="javascript: ${click_script}">
	<acme:message code="${code}"/>
</button>
