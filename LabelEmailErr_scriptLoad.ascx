<%@ Control Language="C#" AutoEventWireup="true" %>

<script runat="server">

	public string unique_func_name;

	protected void Page_Load(object sender, EventArgs args)
	{
		unique_func_name = Regex.Replace(this.Request.Path, @"\W", "_") + "_" + ClientID;


	}


	private string _invalidMsg = nilnul._web_._CTR_.lang.PerRequest.GetEnZh("Email is Invalid (and must be non-empty).", "必填有效邮箱地址");

	public string invalidMsg
	{
		get { return _invalidMsg; }
		set { _invalidMsg = value; }
	}





	public string validatorClientId
	{
		get
		{
			return this.Validator.ClientID;

		}
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
		<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>
		<cc1:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View3" runat="server">Email</asp:View>
			<%--english--%>
			<asp:View ID="View4" runat="server">电子邮箱</asp:View>
		</cc1:enCn__PerModule>:
	</label>

	<%@ Register Src="~/Email_scriptLoad.ascx" TagPrefix="uc1" TagName="Email" %>
	<uc1:Email runat="server" ID="Email" />

	<%@ Register Src="~/Err_scriptLoad.ascx" TagPrefix="uc1" TagName="Validator" %>
	<uc1:Validator runat="server" ID="Validator" />

	<script>
		var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
			var boxer=child.parentElement;
			var key=boxer;
			var children=boxer.children;
			var i=0;
			var label=children[i++];
			var email=children[i++];
			var validator=children[i++];

			var $email=$(email)
				,$boxer=$(boxer)
			;

	<%--		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });--%>
			//var key = ctrl;
			///todo:obsolete
			var
				trigger_changedReportable=function(){
					$boxer.triggerHandler('changedReportable');
				},
				listenChildren = function () {


					nilnul.event.appendEvents(
						email, "changedReportable", email_changedReportable
					);

					$email.on('changedReportable1' ,trigger_changedReportable);


					nilnul.event.appendEvents(
						email, "validityChanged", email_validityChanged
					);
				},
				email_validityChanged = function () {
					validator.val((email.valid ? "" : "<%=invalidMsg%>"));
				},
				email_changedReportable = function () {
					validate();
					nilnul.event.fireAction(key.changedReportable);
					trigger_changedReportable();

				},

				email_changed = function () { },



				validate = function () {
					validator.msgOp((email.isValid1? "" : "<%=invalidMsg%>"));

					//			email.valid ? validator.val(null) : validator.val("<%=invalidMsg%>");

				},



				pub = function () {
					key.valid = validator.valid;

					key.disable = email.disable;
					key.enable = email.enable;
					key.val = email.val;
					key.focus = email.focus;
					key.label = function (x) {
						if (typeof (x) === "undefined") { return label.textContent; }
						else {
							label.textContent = x;
						}
					};

					Object.defineProperties(
						boxer,
						{
							isValid:{
								get:function(){return validator.isZero;}
							}
							,val1:{
								get:function(){return email.val1}
							},
							valid1:{
								get:function(){
									return validator.isZero;
								}
							}
						}
					);

				},

				ini = function () {
					email.size=50;
					$email.attr('size',50);
					validate();
					listenChildren();

					pub();


				}
			;

			ini();
		}

	</script>
	<script src="data:application/javascript;charset=utf-8;base64,IA==" onload="<%=unique_func_name %>(this)"></script>

</span>


