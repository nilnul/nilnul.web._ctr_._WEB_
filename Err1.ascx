<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Err1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Err1" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" %>

<%
//This will generate a client ctrl, i.e., html+script+ maybe some css 

//This ctrl can be used in asp.net design mode as a asp.net user control.
//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
/*
 We use "validate" fucntion to make errs controls be consistent with input controls; i.e., reconcile them.
	 */

%>

<% #if (false) %>

<% #endif %>

<span>
	<span></span>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>
