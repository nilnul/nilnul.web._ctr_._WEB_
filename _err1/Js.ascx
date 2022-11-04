<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._err1.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="l" Shared="true" VaryByCustom="l" %>

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
		var boxer = child.parentElement
			, children = boxer.children
			, i = 0
			,
			output = children[i++]
			,
			className="nilnul-err"
			,
			_isValid=function(){
				return nilnul.txt.isNulOrWhite(output.innerHTML);
			}
			,
			isErr = function () {
				return nilnul.str.notNullOrWhiteSpace(output.innerHTML);
			}
			,
			_asWarn = function () {
				className = "nilnul-warn";
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
				output.classList.add(className );
				


			},
			pub = function () {


				Object.defineProperties(
					boxer,
					{
						beEmpty:{
							get:_isValid
						}
						,
						beValid:{<%--obsolete in favor of beEmpty--%>
							get:_isValid
						}
						,
						beOk:{<%-- considering err with nary-tuple of inputs;not obsolete in favor of beEmpty--%>
							get:_isValid
						}
						,
						beDwelt:{
							get:isErr
						}
						,
						beErr:{<%--obsolete in favor of beDwelt--%>
							get:isErr
						
						}
						,
						msg:{<%--obsolete in favor of txt--%>
							set:msg_set
							,
							get:msg_get
						}
						,
						txt: {
							set:msg_set
							,
							get:msg_get

						}
						,
						className0: {
							set: function (v) {
								className = v;
							}
						}
						,
						classNameWarn: {
							value: function () {
								className = "nilnul-warn";
							}
						}
						,
						asWarn: {
							value: _asWarn
						}
						,
						classNameErr: {
							value: function () {
								className = "nilnul-err";
							}
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

