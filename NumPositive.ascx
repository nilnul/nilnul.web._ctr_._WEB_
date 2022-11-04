<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" regex="^\\s*[+]?\\d*[1-9]\\d*\\s*$" tip="" invalidMsg="Must be a positive natural number" />

<cc1:KeyInSpan ID="KeyInSpan1" runat="server" />
<script>
	(function (

		key
		,
		regex
	) {
		var
			listenChildren = function () {
				nilnul.event.appendEvents(regex, 'changedReportable', function () {
					nilnul.event.fireAction(key.changedReportable);

				});
			},

			pub = function () {
				key.val = function () {

					return regex.isValid()?parseInt(regex.val()):0/0;
				};
				key.isValid = regex.isValid;
				key.txtCtr = regex.txtCtr;
				



			},


			ini = function () {

				listenChildren();
				regex.val(1);

				pub();



			}

		;

		ini();




	})(
		document.getElementById("<%=ClientID%>")
		, document.getElementById("<%=LabelRegexValidator1.ClientID%>")

	);

</script>