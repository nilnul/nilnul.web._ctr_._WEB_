<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Css.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._dialog.Css" %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" %>


<% #if (false) %>
<style>
	<% #endif %> 
	
	.nilnul-dialog-back {

		overflow: auto; ;<%-- /* Enable scroll if needed */ --%>

		background-color: rgb(215,215,215);;<%-- /* Fallback color */--%>
											;

		background-color: rgba(200, 200, 200,1); <%--/* Black w/ opacity */--%>

		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
		;
	    -webkit-animation-name: animatetop;
		-webkit-animation-duration: 0.4s;
		animation-name: animatetop;
		animation-duration: 0.4s
	}

	/* Add Animation */
	@-webkit-keyframes animatetop {
		from { opacity: 0} 
		to { opacity: 1}
	}

	@keyframes animatetop {
		from { opacity: 0}
		to { opacity: 1}
	} 
	

	<% #if (false) %>
</style>
<% #endif %>