<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_._horizon.Js" %>
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
			radioEle=children[i++].firstElementChild
				,$radioEle=$(radioEle)
			,
			altEle=children[i++].firstElementChild
				,$altEle=$(altEle)
			,
			on=function(){
				$radioEle.on("changed", 
					function(e){
						altEle.index=radioEle.index;
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
						,
						fit$:{		<%-- <div> <div>radio</div><div>alt</div> </div> --%>
							value:function($holder){

								radioEle.fit$($holder.children().eq(0));
								altEle.fit$($holder.children().eq(1));
								
							}
						}
						,
						radioAlign: {
							set: function (v) {
								radioEle.align = v;
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
