<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._fetchUi.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0

			,plateEle=children[i++]
			,$plateEle=$(plateEle)

			,ajaxEle=children[i++]
			,$ajaxEle=$(ajaxEle)

			,stateEle=children[i++]
			,$stateEle=$(stateEle)

			,
			post=function () {
				ajaxEle.post();
			}
			,
			ini = function () {

			}
			,
			on=function(){
				ajaxEle.on(
					"done"
					,function (data) {
						$plateEle.html(data);
						nilnul.ele_.parent.iniChildren(plateEle);
						trig.fetched();
					}
				);
			}
			,trig={
				fetched:function () {
					$boxer.triggerHandler("fetched");
				}

			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						url: {
							set: function (val) {
								ajaxEle.url=val;
							}

						}
						,
						post:{
							value:post
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
