<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoadContent.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.dialog_.LoadContent" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/_dialog_/TopBar.ascx" TagPrefix="uc1" TagName="TopBar" %>

<%-- 
	when the dialog is popped out, the content panel of the dialog is notified. Then the content panel contains a FillUi which then fetches some content via url.
	--%>

<%--
	popup a dialog covering the element.
	when maximized, cover the whole page.
	when closed disapear.

	note: this is designed for this ele to be put directly in the parent. 
	for the case that this is put indirectly, such as we wrap this in another div, this design has not it in mind. 'cuz in this case, the parent is change, whether the code of this will work will be questionalbe. Thus we tackle this issue in another design


--%>
<div style="position: absolute; width: 100%; height: 100%; top: 0; left: 0;  display: none; overflow: hidden;" class="nilnul-dialog-back">
	<div style="width: 100%; height: 100%; overflow: hidden; display: flex; flex-direction: column;">
		<uc1:TopBar runat="server" ID="TopBar" />
		<div style="flex: 1 1 auto; overflow: auto;"> <%-- the element has to be self scroll; <<<< 
			we'll change this as dialog is supposed to be within a viewport; so overlow is not hidden--%>
			<%--content--%>
		</div>
		<div>
			<%--state--%>
		</div>
	</div>
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
