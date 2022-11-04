<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc3" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" %>
<script runat="server">
	/// <summary>
	/// 
	/// </summary>
	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}


</script>



<div
	style="/*position: absolute;*/ left: 0%; top: 0%; width: 100%; height: 100%; background-color: rgba(20,20,20,.8); color: yellow;margin:0px;padding:0px;">
	<p style="display:inline-block; margin:0px;padding:0px;">
		<cc3:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View3" runat="server"><%--english--%>Contacting Server...</asp:View>
			<asp:View ID="View4" runat="server">正在与服务器联系...</asp:View>
		</cc3:enCn__PerModule>

	</p>
	<button onclick="this.clicked();" type="button">
		<cc3:enCn__PerModule ID="EnCn__PerModule2" runat="server">
			<asp:View ID="View5" runat="server">Abort<%--english--%></asp:View>
			<asp:View ID="View6" runat="server">中止</asp:View>
		</cc3:enCn__PerModule>
	</button>


	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;
			var p=children[i++];
			var button=children[i++];

			var form=boxer;

			var trigger_oked=function(){
				$(form).trigger('oked');
				
			};


			var pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						msg: {
							value: function (val) {
								$(p).text(val);
							}

						}
					}
				);

				Object.defineProperties(

					button
					,
								
					{
						clicked: {
							value: function () {
								trigger_oked();

							}
						}
					}


				);
			};

			var ini = function () {
				pub();

			};
			ini();

		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</div>
