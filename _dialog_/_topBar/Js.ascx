<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._dialog_._topBar.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="l" %>

<%
%>

<% #if (false) %>

<% #endif %>
<% #if false %>
<script >
		<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			, children=boxer.children
			,
			i=0,
			maxBtn = children[i++]
				,$maxBtn=$(maxBtn)
			,closeBtn = children[i++]
				,$closeBtn=$(closeBtn)
			,
			ini = function () {


			}
			,
			on=function () {
				$maxBtn.click(function () {
					if ($maxBtn.text()==="+") {
						$maxBtn.text("-");
					} else {
						$maxBtn.text("+");
					}
					trig.maxing();
				});
				$closeBtn.click(function () {
					trig.closing();
				});
			}
			,
			trig={
				maxing:function () {
					$boxer.triggerHandler("maxing");
				}
				,
				closing:function () {
					$boxer.triggerHandler("closing");
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
					}
				);
			}
			,
			ready=function () {
				ini();
				on();
				pub();
			}
		;
		ready();
	};
<% #if false %>
	</script>
<% #endif %>