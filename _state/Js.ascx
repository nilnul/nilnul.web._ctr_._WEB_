<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._state.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,msgEle=children[i++]
			,$msgEle=$(msgEle)
			,
			ini = function () {
				$boxer.hide();
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
						txt: {
							set: function (val) {
								if (val) {
									$msgEle.text(val);
									$boxer.show();
								} else {
									$msgEle.text(val);
									$boxer.hide();
									//$msgEle.hide();
								}
							}
						}
						,
						title: {
							set: function (val) {
								$msgEle.attr("title", val);
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
