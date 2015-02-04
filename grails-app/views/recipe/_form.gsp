<%@ page import="grailscookbook.Recipe" %>



<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recipe.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recipeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'formula', 'error')} required">
	<label for="formula">
		<g:message code="recipe.formula.label" default="Formula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formula" required="" value="${recipeInstance?.formula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'ingredients', 'error')} required">
	<label for="ingredients">
		<g:message code="recipe.ingredients.label" default="Ingredients" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ingredients" required="" value="${recipeInstance?.ingredients}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="recipe.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${recipeInstance?.date}"  />

</div>

