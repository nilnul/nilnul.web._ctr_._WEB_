<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="Password.ascx" TagName="Password" TagPrefix="uc1" %>

<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
	}
	public string label
	{
		get
		{
			return label1.InnerHtml;
		}
		set
		{
			label1.InnerHtml = value;
		}
	}
	public string labelId
	{
		get
		{
			return label1.ClientID;
		}
	}
	public string keyId
	{
		get
		{
			return ClientID;
		}
	}

</script>


<% #if (false) %>
<script src="http://localhost:12345/_apps/nilnul.web.js/jquery.js"></script>
<script src="http://localhost:12345/script/_web/nilnul.js"></script>
<% #endif %>

<cc1:KeyHidden ID="KeyHidden1" runat="server" />

<label id="label1" runat="server">Password Repeat:</label>
<uc1:Password ID="Password1" runat="server" />


<script type="text/javascript">

	(function (key, label, password, element) {


		var
			key = element,

			listenChildren = function () {
				nilnul.appendEvents(password, "changed", password_changed);

			}
			,
			password_changed = function () {
				nilnul.fireAction(element.changed);
				nilnul.fireAction(element.changedReportable);

			}
			,

			pub = function () {

				key.labelId = "<%=labelId%>";

				key.label = label;

				key.labelSet = function (x) {
					label.innerHTML = x;
				};

				key.val = password.val;

			},
			ini = function () {
				listenChildren();
				pub();
			}
		;
		ini();

	})(
		document.getElementById("<%=keyId%>")
		,
		document.getElementById("<%=label1.ClientID%>")
		,
		document.getElementById("<%=Password1.keyId%>")
		, document.getElementById("<%=ClientID%>")
	);

</script>

