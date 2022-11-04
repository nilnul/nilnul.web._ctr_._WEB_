<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Css.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_._horizon.Css" %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" %>


<% #if (false) %>
<style>
	<% #endif %> 
	
	
	.nilnul-radio_-horizon-panel {

		border:none;
		/*border-collapse:separate;*/
	}
	.nilnul-radio_-horizon-btn 
	{


	}

	.nilnul-radio_-horizon-btn:hover{
		color:green;
	}

	.nilnul-radio_-horizon-btn:active{
		color:yellow;
	}
	.nilnul-radio_-horizon-btn:focus{
		color:red;
	}
	
	.nilnul-radio_-horizon-btn-selected 
	{

		border: <%= lineThick%> solid <%= outlineColor%>;
		background-color: <%= selectedBackColor%>

	}

	<% #if (false) %>
</style>
<% #endif %>
