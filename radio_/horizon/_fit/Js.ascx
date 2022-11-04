<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_.horizon._fit.Js" %>

<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" VaryByCustom="l" %>

<% #if false%>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>||function (child) {
		var 
			boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,
			i=0
			
			,
			radioEle=children[i++]	//.firstElementChild
			, $radioEle = $(radioEle)
			,
			cacheEl = children[i++]
			, $cacheEl = $(cacheEl)
			,
			on=function(){
				$radioEle.on("changed", 
					function(e){
						trig.changed();
					}
				);
			}
			,
			trig={
				changed:function(){
					$boxer.triggerHandler('changed');
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						index:{
							get:function () {
								return radioEle.index;
							},
							set:function (v) {
								radioEle.index=v;
							}
						}
						
					}
				);
			}, 
			ini = function () {
				radioEle.fit$($cacheEl);

			}
			,
			ready=function () {
				ini();
				on();
				pub();
			}
		;
		ready();
	}
	;
	<% #if false%>
</script>
<% #endif %>
