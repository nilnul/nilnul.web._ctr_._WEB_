<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Email0.ascx.cs" Inherits="nilnul.web.ctrl._web.Email0" %>

<%@ Register src="../TextByRegex.ascx" tagname="Regex" tagprefix="uc1" %>




<%-- load some script ref if not loaded 
--%>
<%--this is a client side control.
	this control will have the following evts:
		init:
			before being loaded. this will not be in the lifecycle in the client side.
		load:
			executed after being loaded.
		validated:
			when the email is validated. the parent can add some actions to this event. when this control is validated, it will execute this, notifying the parent.
		
	the id of this control should be decided by parent. not itself. but its own subcontrols should be decided by it.
	it's self-contained and contextual-agonostic. this simplifies development process.

	
--%>
<uc1:Regex ID="Regex1" runat="server"  regex="^(?:[a-zA-Z0-9_-]+\\.){0,2}(?:[a-zA-Z0-9_-]+)@(?:[a-zA-Z0-9_-]+\\.)+[a-zA-Z]{2,4}$" invalidMsg="Plz input an email address." tip="Email:" />

