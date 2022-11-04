<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidatorForStationedPhoneNumber.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.LabelRegexValidatorForStationedPhoneNumber"
	ClassName="nilnul.web.ctrl._web.LabelRegexValidatorForStationedPhoneNumber_ascx" %>
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
	tip="Stationed Phone:" invalidMsg="Invalid Format." />

<cc1:Key ID="Key1" runat="server" />

<script>
	(function (
		key
		, regex


	) {
		var element = key,

			init = function () {

				element.valid = regex.valid;
				element.val = regex.val;
				element.val.json = function () {
					if (regex.valid()) {
						var matches = regex.regex().exec(element.val());

						matches[1] = matches[1] || "86";
						matches[2] = matches[2] || '27';
						return { country: matches[1], area: matches[2],local:matches[3] };
					}
					return ({});
				};
				element.area = function () { return element.val.json().area;};

				nilnul.event.appendEvents(regex, 'overflown',
					function () {
						nilnul.event.fireAction(element.overflown);
					}

				);


				element.appendOverflow = function (func) {
					nilnul.event.appendEvents(regex, 'overflown', func);

				};
				//nilnul.event.appendEvents(regex, 'overflown', element.overflown);




			};
		init();



	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=LabelRegexValidator1.ClientID%>")


	);

</script>

