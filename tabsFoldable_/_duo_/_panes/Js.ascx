<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabsFoldable_._duo_._panes.Js" %>
<% #if false%>

<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var 
			boxer=child.parentElement
			,$boxer=$(boxer)
			,

			children=boxer.children
			,
			i=0
			,
			pane0=children[i++]
				,
				$pane0=$(pane0)
			,pane1=children[i++]
				,$pane1=$(pane1)
			,
			activePaneIndex_set=function (x) {
				var old_activePaneIndex=activePaneIndex_get();
				x=(x===0?0:(x===1?1:-1));

				if (x!== old_activePaneIndex) {
					if (x===0) {
						$pane1.hide();
						$pane0.show();
					}else if(x===1) {
						$pane0.hide();
						$pane1.show();
					}else {
						$pane0.hide();
						$pane1.hide();
					}
					trig.activePaneIndexChanged();
				}
			}
			,
			activePaneIndex_get=function () {
				if ($pane0.is(':visible') ){
					return 0;
				}else if($pane1.is(":visible")) {
					return 1;
				}else {
					return -1;
				}
			}
			,
			replaceInPane0=function (ele) {
				$pane0.empty().append(ele);	
    
			}
			,
			replaceInPane1=function (ele) {
				$pane1.empty().append(ele);
			}
			,
			on=function(){
				
			}
			,
			trig={
				activePaneIndexChanged:function(){
					$boxer.triggerHandler('activePaneIndexChanged');
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer,
					{
						activePaneIndex:{
							get:activePaneIndex_get,
							set:activePaneIndex_set
						}
						,
						replaceInPane0:{
							value:replaceInPane0
						}
						,
						replaceInPane1:{
							value:replaceInPane1
						}

						
					}
				);
			}, 
			ini = function () {
				$pane1.hide();
				$pane0.hide();
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
	<% #if false %>
</script>
<% #endif %>