<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Alter.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Alter" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>


<%-- multiple view. only one is shown or none is shown 
	each pane/pole,  view or card  is
		an element 
			or 
		content via ajax.Fill

	we need to invoke the optional "prime" method of each due to the possibility of content being ajax.Fill
	--%>

<div style="overflow:hidden;height:100%;width:100%; background-color:azure;position:relative;">
	<div style="overflow:hidden;height:100%;width:100%; background-color:aliceblue;">
		<%--<div> content </div><div>content</div>...--%>
	</div>

	<uc1:State runat="server" id="State" />
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
