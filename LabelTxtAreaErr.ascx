<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc3" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/Err_scriptLoad.ascx" TagPrefix="uc1" TagName="Err_scriptLoad" %>
<%@ Register Src="~/TxtArea.ascx" TagPrefix="uc1" TagName="TxtArea" %>



<script runat="server">
	public string unique_func_name;
	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;
	}
</script>


<% #if (false) %>
	<script src="http://localhost:12345/script/_web/jquery.js"></script>
	<script src="http://localhost:12345/script/_web/nilnul.js"></script>
<% #endif %>

<span>
	<label runat="server" id="label">
		<cc3:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View3" runat="server"><%--english--%></asp:View>
			<asp:View ID="View4" runat="server"></asp:View>
		</cc3:enCn__PerModule>:		
	</label>
	<uc1:TxtArea runat="server" ID="TxtArea" />
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
					err.msg(
						check(
							txt.val
						)
					);
				},
				check_changed=function(){
				},

				listen= function () {
					$txt.on(
						"changed", 

						function (x) {
							var oldValid=err.valid1;
							validate();
							if (
								oldValid || err.valid1
						
							){
								trigger.changedReportable();
							}
						}
					);
				
				}
				,
				trigger={
					changedReportable:function(){
						$boxer.triggerHandler("changedReportable");
					}
				}
				,
				pub = function () {
					Object.defineProperties(
						boxer,
						{
							focal:{
								value:function(){
									txt.focal && txt.focal();
								}
							},
							check:{
								set:function(x){
									check=x;
									var oldValid=err.isZero;
									validate();
									if (oldValid^err.isZero) {
										trigger.changedReportable();
									}

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
							,placeholder:{
								set:function(x){
									txt.placeholder=x;
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