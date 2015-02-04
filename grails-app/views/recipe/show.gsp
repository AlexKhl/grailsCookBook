
<%@ page import="grailscookbook.Recipe" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recipe" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recipe">
			
				<g:if test="${recipeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recipe.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recipeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipeInstance?.formula}">
				<li class="fieldcontain">
					<span id="formula-label" class="property-label"><g:message code="recipe.formula.label" default="Formula" /></span>
					
						<span class="property-value" aria-labelledby="formula-label"><g:fieldValue bean="${recipeInstance}" field="formula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipeInstance?.ingredients}">
				<li class="fieldcontain">
					<span id="ingredients-label" class="property-label"><g:message code="recipe.ingredients.label" default="Ingredients" /></span>
					
						<span class="property-value" aria-labelledby="ingredients-label"><g:fieldValue bean="${recipeInstance}" field="ingredients"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipeInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="recipe.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${recipeInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recipeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recipeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
