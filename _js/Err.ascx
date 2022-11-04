<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Err.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._js.Err" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" %>

<%
//This will generate a client ctrl, i.e., html+script+ maybe some css 

//This ctrl can be used in asp.net design mode as a asp.net user control.
//If this is put on an aspx page, then the page can be retrieved from browser and insert into client side webpage as a client side ctrl.
%>

<% #if (false) %>

<% #endif %>
<% #if false %>
<script >
		<% #endif %>


	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0,


			output = children[i++]
			,

			isErr = function () {
				return nilnul.str.notNullOrWhiteSpace(output.innerHTML);
			}
			,
			msg_get=function () {
    					return output.innerHTML;

			}
			,
			msg_set = function (x) {
				
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


				Object.defineProperties(
					boxer,
					{
						beValid:{
							get:function(){
								return nilnul.txt.isNulOrWhite(output.innerHTML);

							}
						}
						,
						beErr:{
							get:isErr
						
						}
						,
						msg:{
							set:msg_set
							,
							get:msg_get
						}
					}
				);
			},

			ini = function () {
			}
			,
			ready=function () {
				ini();
				pub();
			}
		;

		ready();

	};
<% #if false %>
	</script>
<% #endif %>

