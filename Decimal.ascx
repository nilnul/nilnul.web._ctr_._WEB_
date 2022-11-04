<%--
	A number input.
	--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Decimal.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Decimal" %>


<%@ Register src="Regex2.ascx" tagname="Regex" tagprefix="uc1" %>



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
<uc1:Regex ID="Regex1" runat="server"  regex="^\\s*([+]|[-])?(\\d*(\\.\\d*)?)\\s*$"  />

