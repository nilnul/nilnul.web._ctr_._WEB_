<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Css.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_._vertical.Css" %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" %>


<% #if (false) %>
<style>
	<% #endif %> 
	
	
	.nilnul-radio_-vertical-panel {

		border:none;
		/*border-collapse:separate;*/
	}
	.nilnul-radio_-vertical-btn 
	{


	}

	.nilnul-radio_-vertical-btn:hover{
		color:green;
	}

	.nilnul-radio_-vertical-btn:active{
		color:yellow;
	}
	.nilnul-radio_-vertical-btn:focus{
		color:red;
	}
	
	.nilnul-radio_-vertical-btn-selected 
	{

		border: <%= lineThick%> solid <%= outlineColor%>;
		background-color: <%= selectedBackColor%>

	}

	<% #if (false) %>
</style>
<% #endif %>
