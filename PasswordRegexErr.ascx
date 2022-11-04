<%@ Control Language="C#" AutoEventWireup="true" %>
<%--<%@ OutputCache  Duration="3600000" VaryByParam="id" %>--%>

<%@ Register Src="PasswordRegexed1.ascx" TagPrefix="uc1" TagName="Regex" %>
<%--<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>--%>
<%@ Register Src="Err.ascx" TagPrefix="uc1" TagName="Err" %>

<% #if (false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>
<label style="display: inline-block; border: 1px solid gray;" id="<%=ClientID %>">
	<uc1:Regex runat="server" ID="Regex1" />
	<uc1:Err runat="server" ID="Validator" />
	<script>
		(function (
			boxer
		) {
			/**@deprecated
			@see err
			*/
			var regex = boxer.firstElementChild;
			var err = regex.nextElementSibling;
			var errYesMsg;

		var
		validate = function () {
			err.msgOp(regex.regexTestedGet() ? "" : errYesMsg);
		},
		listen = function () {
			nilnul.evt.appendEvents(
					regex,
					"changedReportable",
					regex_changedReportable
			);
		},
		regex_changedReportable = function () {
			validate();
			nilnul.event.fireAction(boxer.changedReportable);
		},
		pub = function () {
			boxer.errYesMsgOp = function (x) {
				if ((typeof x) === "undefined") {
					return errYesMsg;

				}
				errYesMsg = x || "";
				if (! regex.regexTestedGet()){
					err.msgOp(errYesMsg);

				}
			};

			boxer.regexStrOp = regex.regexStrOp;
			
			/**
			@deprecated
			@see isValid
			*/
			boxer.hasErr = err.has;
			boxer.isValid = function () { return regex.isValid(); };

			boxer.valOp = function (x) {
				if (typeof x == "undefined") {
					return regex.valOp();
				}
				regex.valOp(x);

			};


			boxer.hide = function () {
				boxer.style.display = "none";


			};

			boxer.txtCtr = regex.txtCtr;

		},


		ini = function () {
			validate();
			listen();
			pub();
		};

		ini();

	})(
		document.getElementById("<%=ClientID%>")
	);

	</script>

</label>

<%--<uc1:Validator runat="server" ID="Validator" />--%>

