<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelEmailRequiredValidator.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelEmailRequiredValidator" %>

<%@ Register Src="~/Validator.ascx" TagPrefix="uc1" TagName="Validator" %>
<%@ Register Src="~/EmailRequired.ascx" TagPrefix="uc1" TagName="Email" %>


<% #if(false) %>
	<script src="http://localhost:12345/script/_web/jquery.js">

	</script>
	<script src="http://localhost:12345/script/_web/nilnul.js">

	</script>
	
<% #endif %>


<label runat="server" id="label">Email:</label>
<uc1:Email runat="server" ID="Email" />
<uc1:Validator runat="server" id="Validator" />
<input id="key" type="hidden" runat="server" />

<input id="<%=ClientID %>" type="hidden"  />
<script>
	(function (
		key,email,validator,element
	) {
		//regex.addEventListener("valid", function () { validator.innerHTML = this.valid ? "<%=invalidMsg%>" : "" });

		//var key = ctrl;

		var handleEmailValidChange = function () {
			validator.val((email.valid() ? "" : "<%=invalidMsg%>"));
			nilnul.fireAction(key.validChangedEvt);
			nilnul.fireAction(key.overflownEvt);
		},
		handle = function () {

			var oldValidity = validator.valid();
			validate();
			var newValidity = valid();
			if (newValidity) {
				report();

			} else {
				if (oldValidity) {
					report();
				}
			}

		},

		report = function () {
			nilnul.fireAction(key.overflownEvt);
			nilnul.fireAction(key.validChangedEvt);
			nilnul.fireAction(key.changedEvt);

		},

		validate = function () {
			validator.innerHTML = (email.valid() ? "" : "<%=invalidMsg%>")
		},

		valid = function () {
			return validator.valid();

		},

		handleEmailChanged = function () {

			//report
			nilnul.fireAction(key.changedEvt);
		}
		
		,
		listenEvts = function () {

			nilnul.appendEvents(
				email,"changedEvt",handleEmailChanged
			);

			handleEmailChanged();
			nilnul.appendEvents(
				email, "validChangedEvt", handleEmailValidChange
			);
			handleEmailValidChange();


		},

		
		listen = function () {
			nilnul.appendEvents(email, "overflownEvt", handle);
			handle();

			//listenEvts();



		},

		pub = function () {


		},

		ini = function () {
			listen();

			listenEvts();
			

			key.valid = validator.valid;

			key.disable = email.disable;
			key.enable = email.enable;
			key.val = email.val;


		};

		ini();
		

		



	})(
		document.getElementById("<%=key.ClientID%>")
		,
		document.getElementById("<%=Email.keyId%>")
		,
		document.getElementById("<%=Validator.clientId%>")
		,
		document.getElementById("<%=ClientID%>")

	);

</script>
