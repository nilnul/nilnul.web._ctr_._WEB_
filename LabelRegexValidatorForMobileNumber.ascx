<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidatorForMobileNumber.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidatorForMobileNumber" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register Src="LabelRegexValidator.ascx" TagName="LabelRegexValidator" TagPrefix="uc1" %>


<% #if(false) %>
<script src="http://localhost:12345/_apps/script/jquery.js">

</script>
<script src="http://localhost:12345/_apps/script/jQuery/js/jquery-ui-1.10.0.custom.min.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.string.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.cookie.js">

</script>



<script src="http://localhost:12345/_apps/script/nilnul.ctrl.js">

</script>
<script src="http://localhost:12345/_apps/script/nilnul.event.js">

</script>



<% #endif %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server"
	tip="Mobile:" invalidMsg="Invalid Format." />

<cc1:Key ID="Key1" runat="server" />

<script>
	(function (

		key
		,
		regex
	) {
		var
			pub = function () {
				key.val = regex.val;
				key.handle = regex;
				key.val.json = function () {
					
						var matches = regex.matches();
					
						return { country: matches[1] || "86", mobile: matches[2] };
					
				};

				key.valid = regex.valid;
				key.regex = regex.regex;




			},

			listen = function () {
				nilnul.event.appendEvents(regex, 'overflown', function () {
					nilnul.event.fireAction(key.overflown);

				});
			},


			init = function () {
				listen();

				pub();



			}

		;

		init();




	})(
		document.getElementById("<%=ClientID%>")
		, document.getElementById("<%=LabelRegexValidator1.ClientID%>")

	);

</script>
