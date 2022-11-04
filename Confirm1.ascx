<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Confirm1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Confirm1" %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByParam="id" %>


<script runat="server">

	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>

<div style="/*position: absolute;*/ left: 0%; top: 0%; width: 100%; height: 100%; display: block;padding:0px;margin:0px;" onfocus="this.focused_()" id="<%=ClientID %>" name="<%=ClientID %>"
	<%--	onsubmit="return false;" action="javascript:void(0);" --%>>
	<p style="display:inline-block;margin:0;padding:0;">
		<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Are you sure?","真的吗？") %>
	</p>

	<button  onclick="this.clicked()" type="button">
		<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Ok","确定") %>
	</button>
	<button  onclick="this.clicked()" type="button">
		<% =nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Cancel","取消")%>
	</button>
	<span style="display:none;"></span>

	
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
