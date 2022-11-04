<%@ Control Language="C#" AutoEventWireup="true" %>


<script runat="server">

	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}

	public string tip
	{
		get
		{
			return label.InnerHtml;
		}
		set
		{
			label.InnerHtml = value;
		}
	}

</script>


<% #if (false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>

<span>
	<label runat="server" id="label">
		<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
		<cc2:EnZh_perRequest ID="EnglishChinese1" runat="server">
			<asp:View ID="View1" runat="server">Password</asp:View>
			<asp:View ID="View2" runat="server">Password</asp:View>
		</cc2:EnZh_perRequest>:
	</label>

	<%@ Register Src="~/Pass2.ascx" TagPrefix="uc1" TagName="Txt_scriptLoad" %>
	<uc1:Txt_scriptLoad runat="server" ID="Txt_scriptLoad" />

	<%@ Register Src="~/Err_scriptLoad.ascx" TagPrefix="uc1" TagName="Err_scriptLoad" %>
	<uc1:Err_scriptLoad runat="server" ID="Err_scriptLoad1" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;

			var i=0;
			var label=children[i++];
			var txt=children[i++];
			var err=children[i++];

			var $boxer=$(boxer);
			var $label=$(label);
			var $txt=$(txt);
			var $err=$(err);

			<%--		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });--%>
			//var key = ctrl;
			///todo:obsolete
			var
				check=function(val){
					return "";
				},
				validate=function(){
					var checkResult=check(
						txt.val
					);
					err.msg(checkResult);
				},

				handle=function () {
					var oldValid=err.valid1;
					validate();
					if (
						oldValid || err.valid1
						
					){
						trigger_changedReportable();
					}
				}
				,
				listen= function () {
					$txt.on(
						 "changed", txt_changed
					);
				}
				,
				txt_changed= function (x) {
					var oldValid=err.valid1;
					validate();
					if (
						
							oldValid || err.valid1
						
					){
						trigger_changedReportable();
					}
				},
				trigger_changedReportable=function(){
					$boxer.triggerHandler("changedReportable");
				}
				,
				pub = function () {
					Object.defineProperties(
						boxer,
						{
							focus:{
								value:function(){
									txt.focus && txt.focus();
								}
							},
							check:{
								set:function(x){
									check=x;
									handle();
								}
							},
							valid:{
								get:function(){return err.isZero;}
							}
							,
							label:{
								set: function (x) {
									label.textContent = x;
								}
							}
							,
							disable:{
								value:function(){
									txt.disable();
								}
							}
							,
							enable:{
								value:function(){
									txt.enable();
								}
							}
							,val:{
								get:function(){
									return txt.val;
								}
								, set: function (v) {
									txt.val = v;
								}
							}
							,size:{
								set:function (x) {
									txt.size=x;
								}
							}


						}
					);

				},

				ini = function () {
					validate();
					listen();
					pub();
				}
			;

			ini();
		};

	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>


