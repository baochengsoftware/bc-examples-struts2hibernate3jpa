<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
<title><s:text name="example.view.title" /></title>
<script type="text/javascript">
	var contextPath = '<s:url value="/"/>';
</script>
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/themes/smoothness/jquery-ui.css" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="<s:url value="/example/struts2/Display.js" />"></script>
<style type="text/css">

</style>
</head>
<body>
	<div>
		<s:text name='example.view.title' />
		：<input type="button" id="btnRefresh"
			value="<s:text name='button.refresh'/>" /><input type="button"
			id="btnNew" value="<s:text name='button.new'/>" />
	</div>
	<table class="borderAll">
		<tr>
			<th><s:text name="example.label.id" /></th>
			<th><s:text name="example.label.name" /></th>
			<th><s:text name="example.label.operator" /></th>
		</tr>
		<s:iterator value="entities" status="status">
			<tr class="<s:if test="#status.even">even</s:if><s:else>odd</s:else>">
				<td class="nowrap"><s:property value="id" /></td>
				<td class="nowrap"><s:property value="name" /></td>
				<td class="nowrap"><s:url action="example!edit" id="url">
						<s:param name="id" value="example.id" />
					</s:url> <a href="<s:property value="#url"/>"><s:text
							name="button.modify" /> </a> &nbsp;&nbsp;&nbsp; <s:url
						action="example!delete" id="url">
						<s:param name="id" value="example.id" />
					</s:url> <a href="<s:property value="#url"/>"><s:text
							name="button.delete" /> </a>
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>