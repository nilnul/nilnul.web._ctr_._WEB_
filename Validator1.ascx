<%
	//This will generate a client ctrl, i.e., html+script+ maybe some css 
	
	//This ctrl can be used in asp.net design mode as a asp.net user control.
	//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Validator1.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Validator1" %>



<% #if(false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.cookie.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.string.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.ctrl.js">

</script>

<% #endif %>


<span id="<%=ClientID %>"></span>

<script type="text/ecmascript">
	(function (element) {

		var
			label = element,

		valid = function () {
			return nilnul.isNullOrWhiteSpace(element.innerHTML);
		},


		val = function (x) {
			if (typeof x == "undefined") {
				return element.innerHTML;
			}
			if (x === null) {
				element.innerHTML = "";
				return;

			}
			x = x.toString();

			if (nilnul.string.isNullOrWhiteSpace(x)) {
				element.innerHTML = "";
				return;
			}

			element.innerHTML = x;
			element.style.color = "red";


		},

		init = function () {

			element.val = val;

			element.valid = valid;



		};

		init();

	})(

		document.getElementById("<%=ClientID%>")


	);
</script>
