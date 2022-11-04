<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>

<%@ Register src="LabelRegexValidator.ascx" tagname="LabelRegexValidator" tagprefix="uc1" %>

<uc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" regex="^\\s*[+]?\\d*\\s*$" tip="" invalidMsg="Must be a natural number" />

<cc1:KeyInSpan ID="KeyInSpan1" runat="server" />

<script>
	(function (

		key
		,
		regex
	) {
		var
			hearing = function () {
				nilnul.event.appendEvents(
					regex,
					'changedReportable',
					function () {
						nilnul.event.fireAction(key.changedReportable);
					}
				);
			},

			pub = function () {
				key.val = function (x) {
					if (x===void null) {
						return regex.isValid()?parseInt(regex.val()):0/0;

					}
					return regex.val(x);

				};
				key.isValid = regex.isValid;
				key.txtCtr = regex.txtCtr;
				



			},


			ini = function () {

				hearing();

				pub();



			}

		;

		ini();




	})(
		document.getElementById("<%=ClientID%>")
		, document.getElementById("<%=LabelRegexValidator1.ClientID%>")

	);

</script>

