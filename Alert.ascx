<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Alert.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.Alert" %>
<%--<%@ OutputCache  VaryByParam="l;id" Duration="36000000"  %>--%>

<div  id="<%=ClientID %>" 
	<%--	onsubmit="this.form_submit();return false;"--%>
	style="position:absolute;left:0%;top:0%;width:100%;height:100%;background-color:rgba(20,20,20,.8);color:yellow;"
>
	<p runat="server" id="p"></p>
	<button id="button" runat="server" onclick="this.clicked();">

		<% =nilnul._web_._CTR_.LangModule.GetString("Ok","好") %>
	</button>

	<%--	<input type="submit"   value="<% =nilnul._web_._CTR_.LangModule.GetString("Ok","好") %>"/>--%>
	
</div>
<script>
	(function (
		form
		,
		p,

		button


	) {
		var pub = function () {
			Object.defineProperties(
				form
				,
				{
					form_submit: {
						value: function () {
							$(form).hide();
							$(form).trigger('oked');

						}
						//,
						//writable:false
					}
					,
					message: {
						value: function (val) {
							$(p).text(val);
						}

					}
				}
			);

			Object.defineProperties(

				button
				,
								
				{
					clicked: {
						value: function () {
							$(form).hide();
							$(form).trigger('oked');

						}
						//,
						//writable:false
					}
				}


			);
		};

		var ini = function () {
			pub();

		};
		ini();

	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=p.ClientID%>")
		,
		document.getElementById("<%=button.ClientID%>")

	
	);
</script>