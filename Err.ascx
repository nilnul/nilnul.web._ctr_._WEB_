<%@ Control Language="C#" AutoEventWireup="true" %>
<%--<%@ OutputCache  Duration="3600000" VaryByParam="none" %>--%>

<%
//This will generate a client ctrl, i.e., html+script+ maybe some css 

//This ctrl can be used in asp.net design mode as a asp.net user control.
//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>




<% #if (false) %>
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


<label id="<%=ClientID %>">
	<span></span>
	<script >
		(function (boxer) {

			var
				output = boxer.firstElementChild,	//compatible

				has = function () {
					return nilnul.str.notNullOrWhiteSpace(output.innerHTML);
				}
			,
			/**@compatible*/


			msgOp = function (x) {
				if (typeof x == "undefined") {
					return output.innerHTML;
				}
				if (x === null) {
					output.innerHTML = "";
					return;

				}
				x = x.toString();

				if (nilnul.str.isNullOrWhiteSpace(x)) {
					output.innerHTML = "";
					return;
				}

				output.innerHTML = x;
				output.style.color = "red";


			},
			pub = function () {
				boxer.msgOp= msgOp;
				boxer.hide = function () {
					boxer.style.display = "none";
				};
				boxer.has = has;
			},

			ini = function () {
				pub();
			};

			ini();

		})(

			document.getElementById("<%=ClientID%>")


	);
	</script>


</label>

