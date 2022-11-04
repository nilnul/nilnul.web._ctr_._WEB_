<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_._trio_._panes.Js" %>
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
			,pane2=children[i++]
				,$pane2=$(pane2)
			,
			panes=[pane0,pane1,pane2]
			,
			$panes=$(panes)
			,
			activePaneIndex_set=function (x) {
				var old_activePaneIndex=activePaneIndex_get();
				if (x!== old_activePaneIndex) {
					if (x===0) {
						$pane1.hide();
						$pane2.hide();
						$pane0.show();
					}else if(x===1){
						$pane0.hide();
						$pane2.hide();
						$pane1.show();
					}else {
						$pane0.hide();
						$pane1.hide();
						$pane2.show();
					}
					trig.activePaneIndexChanged();
				}
			}
			,
			activePaneIndex_get=function () {

				return [$pane0, $pane1, $pane2].findIndex( function (x) {
					return x.is(":visible");
				});
				
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
			replaceInPane2=function (ele) {
				$pane2.empty().append(ele);
			}
			,
			pane0_postUri=function(uri, callback){
				$pane0.load(uri, {}, 
					callback
				);
			
			}
			,
			pane1_postUri=function(uri, callback){
				$pane1.load(uri, {}, 
					callback
				);
			}
			,
			pane2_postUri=function(uri, callback){
				$pane2.load(uri, {}, 
					callback
				);
			}
			,
			loadUri=function(paneIndex, uri, data,  callback){
				$panes.eq(paneIndex).load(uri,data,callback );
			}
			,
			postUri=function (paneIndex, uri, callback) {
				loadUri(paneIndex,uri, {},callback);
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
						,
						replaceInPane2:{
							value:replaceInPane2

						}
						,
						pane0_postUri:{
							value:pane0_postUri
						}
						,
						pane1_postUri:{
							value:pane1_postUri
						}
						,
						pane2_postUri:{
							value:pane2_postUri
						}
						,postUri:{
							value:postUri
						}
						,loadUri:{
							value:loadUri
						}
					}
				);
			}, 
			ini = function () {
				$pane1.hide();
				$pane2.hide();
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