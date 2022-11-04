<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web.ctr._web.fetchUi._auto.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,fetchEle=children[i++]
			,$fetchEle=$(fetchEle)

			,stateEle=children[i++]
			,$stateEle=$(stateEle)
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
						url: {
							set: function (val) {
								fetchEle.url=val;
							}
						}
						,
						post:{
							value:function () {
								fetchEle.post();
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
