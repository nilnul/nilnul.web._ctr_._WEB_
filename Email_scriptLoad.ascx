<%@ Control Language="C#" AutoEventWireup="true" %>

<%--
	@see txt/err/Email.ascx

	--%>

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
<%@ Register Src="Regex_scriptLoad.ascx" TagName="Regex" TagPrefix="uc1" %>

<uc1:Regex ID="Regex1" runat="server" regex="(^(?:[a-zA-Z0-9_-]+\\.){0,2}(?:[a-zA-Z0-9_-]+)@(?:[a-zA-Z0-9_-]+\\.)+[a-zA-Z]{2,4}$)"  />

