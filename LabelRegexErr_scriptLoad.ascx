<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.lang" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="~/Err_scriptLoad.ascx" TagPrefix="uc1" TagName="Validator" %>
<%@ Register Src="~/Email_scriptLoad.ascx" TagPrefix="uc1" TagName="Email" %>
<%@ Register Src="~/Regex_scriptLoad.ascx" TagPrefix="uc1" TagName="Regex_scriptLoad" %>


<script runat="server">

	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;


	}


	private string _invalidMsg = nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Email is Invalid (and must be non-empty).", "邮箱格式不对（空着也不行）");

	public string invalidMsg
	{
		get { return _invalidMsg; }
		set { _invalidMsg = value; }
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
		<cc2:EnZh_perRequest ID="EnglishChinese1" runat="server">
			<asp:View ID="View1" runat="server"></asp:View>
			<asp:View ID="View2" runat="server"></asp:View>
		</cc2:EnZh_perRequest>:
	</label>
	<uc1:Regex_scriptLoad runat="server" ID="Regex_scriptLoad" />
	<uc1:Validator runat="server" id="Err_scriptLoad1" />

	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;

			var i=0;
			var label=children[i++];
			var regex=children[i++];
			var err=children[i++];

			var $boxer=$(boxer);
			var $label=$(email);
			var $regex=$(regex);
			var $err=$(err);


	<%--		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });--%>
			//var key = ctrl;
			///todo:obsolete
			var
				validate = function () {
					err.msg1((email.isValid1? "" : "<%=invalidMsg%>"));
				},


				listen= function () {

					$regex.on(
						 "changedReportable", regex_changedReportable
					);

					
				},
				
				regex_changedReportable = function (x) {
					var oldValid=err.valid1;
					validate();
					if (oldValid !==err.valid1) {
 						trigger_changedReportable();
					}
					else {
						if (err.valid1) {
							if (x) {
								if(x.type && x.type==="valChanged"){
									trigger_changedReportable();
								}
							}
						}
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
									regex.focus && regex.focus();
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
							regex:{
								set:function(x){
									regex.regex(x);
								
								}
							}
							,disable:{
								value:function(){
									regex.disable();
								}
							}
							,
							enable:{
								value:function(){
									regex.enable();
								}
							}
							,val:{
								get:function(){
									return regex.val;
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
		}

	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>


