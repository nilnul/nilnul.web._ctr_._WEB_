<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="Pass2.ascx" TagName="Password" TagPrefix="uc1" %>

<script runat="server">

	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}

</script>


<% #if (false) %>
<script src="http://localhost:12345/_apps/nilnul.web.js/jquery.js"></script>
<script src="http://localhost:12345/script/_web/nilnul.js"></script>
<% #endif %>

<span>
	<label>
		<cc2:EnZh_perRequest ID="EnZh_perRequest1" runat="server">
			<asp:View ID="View1" runat="server">Password Repeat:</asp:View>
			<asp:View ID="View2" runat="server">再次输入：</asp:View>
		</cc2:EnZh_perRequest>	
	</label>
	<uc1:Password ID="Password1" runat="server" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var children=boxer.children;
			var i=0;
			var label=children[i++];
			var pass=children[i++];

			var $boxer=$(boxer);
			var $label=$(label);
			var $pass=$(pass);

			var key=boxer;
			var element=boxer;

			var
				listen= function () {
					$pass.on('changed1', pass_changed);
				}
				,
				pass_changed = function () {
					trigger.changedReportable();
				}
				,
				trigger={
					changedReportable:function () {
						$boxer.triggerHandler('changedReportable');
					}
				}
				,
				pub = function () {
					Object.defineProperties(
						boxer,
						{
							label:{
								set:function (x) {
									label.innerHTML = x;
								}
							}
							,
							val:{
								get:function () {
									return pass.val;
								}
							}
						}
					);

				},
				ini = function () {

					$pass.attr("placeholder",  "<%=nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Repeat Password", "重复输入密码")%>");

					listen();
					pub();
				}
			;
			ini();
		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>

