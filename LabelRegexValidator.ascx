<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidator" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%@ Register Src="~/Regex2.ascx" TagPrefix="uc1" TagName="Regex" %>
<%--<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>--%>
<%@ Register Src="~/Err.ascx" TagPrefix="uc1" TagName="Err" %>


<% #if (false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>
<span style="display: inline-block; border: 1px solid gray;">


	<cc1:KeyHidden ID="KeyHidden1" runat="server" />
	<label runat="server" id="label"></label>
	<uc1:Regex runat="server" ID="Regex1" />
	<uc1:Err runat="server" ID="Validator" />
</span>

<%--<uc1:Validator runat="server" ID="Validator" />--%>

<script>
	(function (
		key, label, regex, err
	) {
		/**@deprecated
		@see err
		*/
		var validator = err;

		var invalidMsg = "<%=invalidMsg%>";

		var
		validate = function () {
			validator.val(regex.isValid() ? "" : invalidMsg);
		},
		listenChildren = function () {
			nilnul.event.appendEvents(
					regex,
					"changedReportable",
					regex_changedReportable
			);
		},
		regex_changedReportable = function () {
			validate();
			nilnul.event.fireAction(key.changedReportable);
		},
		pub = function () {
			key.invalidMsg = function (x) {
				if ((typeof x) === "undefined") {
					return invalidMsg;

				}
				invalidMsg = x || "";
				if (!validator.valid()) {
					validator.val(invalidMsg);

				}
			};

			key.regex = regex.regex;

			key.label = function (x) {
				label.innerHTML = x;


			};
			/**
			@deprecated
			@see isValid
			*/
			key.valid = err.containsErr;

			key.val = function (x) {
				if (typeof x == "undefined") {
					return regex.val();
				}
				regex.val(x);

			};

			key.tip = function (x) {
				if (typeof x === "undefined") {
					return label.innerHTML;

				}
				label.innerHTML = x;

			};

			key.hide = function () {
				label.style.display = "none";
				regex.hide();
				err.hide();


			};

			key.isValid = err.containsErr;
			key.txtCtr = regex.txtCtr;


		},


		ini = function () {
			validate();
			listenChildren();
			pub();
		};

		ini();

	})(
		document.getElementById("<%=keyId%>")
		,
		document.getElementById("<%=label.ClientID%>")
		,
		document.getElementById("<%=Regex1.ClientID%>")
		,
		document.getElementById("<%=Validator.ClientID%>")
	);

</script>
