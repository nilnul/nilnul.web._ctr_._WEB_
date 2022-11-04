<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.state._div.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,stateEle=children[i++]
			,$stateEle=$(stateEle)
			,
			on=function(){
			}
			,
			trig = {
			}
			,
			ini = function () {
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						txt: {
							set: function (val) {
								stateEle.txt = val;
							}
						}
					}
				);
			}
			,
			ready=function () {
				ini();on();pub();
			}
		;
		ready();
	};
	<% #if false %>
</script>
<% #endif %>
