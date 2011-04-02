<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>表单</title>
<s:head theme="ajax"/>
<script type="text/javascript">var contextPath='<s:url value="/"/>';</script>
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/themes/smoothness/jquery-ui.css" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js"></script>
<script type="text/javascript" src="<s:url value="/example/struts2/Form.js" />"></script>
</head>
<body>
<div>表单：
<input type="button" value="保存" id="btnSave" /><input
	type="button" id="btnContinueNew" value="继续新建" /></div>

<fieldset style="width:350px;margin:10px;">
<s:form theme="ajax" id="thisForm" action="example!save">
	<s:textfield name="entity.name" key="example.label.name"/>
	<s:textfield name="entity.code" label="%{getText('example.label.code')}"/>
	<s:textfield name="entity.id" label="%{getText('example.label.id')}" id="id"/>
	<s:submit type="button" key="button.save" target="msg" executeScripts="true"/>
</s:form>
</fieldset>
<div id="msg"></div>
</body>
</html>