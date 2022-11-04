<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Frm.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Frm" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/State.ascx" TagPrefix="uc1" TagName="State" %>
<%@ Register Src="~/ajax/cors/FailMsged.ascx" TagPrefix="uc1" TagName="FailMsged" %>
<%@ Register Src="~/Cover.ascx" TagPrefix="uc1" TagName="Cover" %>



<%-- 
	a form with a button to submit.
	When submitting, disable the button, but the input is not disabled such that user can still input. If we want to cover the whole form such that user cannot input, we should subtype this control as, say, form_.Cover
	--%>
<form>
	<div>
		<%-- input goes here as the single childElement
			trig{
				report
				,
				
			}
			pub:{
				beValid
				,
				val:{get;set;}  //set the value will decide to trig or not.
			}
			
			--%>
	</div>
	<input type="submit" style="align-self:center; width:60%; background-color:darkgoldenrod; margin-left:auto;margin-right:auto;display:block;" value="<%=nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetEnCn("Submit","提交")%>""  />
	<uc1:State runat="server" ID="State" />
	<uc1:Cover runat="server" ID="Cover" />
	<cc1:OnLoadScript ID="OnLoadScript1" runat="server" />
</form>
