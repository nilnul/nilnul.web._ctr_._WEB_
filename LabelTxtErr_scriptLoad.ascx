<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc3" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/Txt_scriptLoad.ascx" TagPrefix="uc1" TagName="Txt_scriptLoad" %>
<%@ Register Src="~/Err_scriptLoad.ascx" TagPrefix="uc1" TagName="Err_scriptLoad" %>


<script runat="server">

	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
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
		<cc3:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View3" runat="server"><%--english--%></asp:View>
			<asp:View ID="View4" runat="server"></asp:View>
		</cc3:enCn__PerModule>	:
	</label>
	<uc1:Txt_scriptLoad runat="server" ID="Txt_scriptLoad" />
	<uc1:Err_scriptLoad runat="server" ID="Err_scriptLoad1" />
	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
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
					err.msg1=(checkResult);
				},

				recheck=function () {
					var oldValid=err.isZero;
					validate();
					if (oldValid^err.isZero) {
						trigger_changedReportable();
					}
				},
				check_changed=function(){
					
				},

				listen= function () {

					$txt.on(
						 "changed1", txt_changed
					);

					
				},
				
				txt_changed= function (x) {
					var oldValid=err.valid1;
					validate();
					if (
						oldValid || err.valid1
						
					){
						trigger_changedReportable();
					}
				},
				trigger={},
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
									regex.focus && regex.focus();
								}
							},
							check:{
								set:function(x){
									check=x;
									var oldValid=err.isZero;
									validate();
									if (oldValid^err.isZero) {
										trigger_changedReportable();
									}

								}
							},
							placeholder:{
								set:function (x) {
									txt.placeholder=x;
								}
							},
							recheck:{
								value:recheck
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
							,disable:{
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
							,
							val:{
								get:function(){
									return txt.val;
								},
								set:function(x){
									txt.val=x;

								}
							}
							,size:{
								se:function (x) {
									$txt.size=x;
								}
							}


						}
					);

				},

				ini = function () {
					check();
					listen();
					pub();
				}
			;

			ini();
		};
	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>
</span>