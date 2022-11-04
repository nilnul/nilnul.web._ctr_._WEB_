<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._progress.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,foreEle=children[i++]
			,$foreEle=$(foreEle)
			,
			ini = function () {
			}
			,
			on=function(){
			}
			,trig={
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						percent: {
							set: function (val) {
								$foreEle.css("width", val+"%");
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
