<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._alter.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0

			,plateEle=children[i++]
			,$plateEle=$(plateEle)

			,stateEle=children[i++]
			,$stateEle=$(stateEle)

			,get$panes=function () {
				return $plateEle.children();
			}
			,
			_index_get=function () {
				return get$panes().get().findIndex(
					function (ele,i,str) {
						return $(ele).is(':visible');
					}
				);
			}
			,
			_pane_index2select=function (index) {
				if (index === -1) {
					
				}else {
					var $pane=get$panes().eq(index);
					var content = $pane.children().get(0);
					let $content = $(content);
					if(content){

						nilnul.func.exe(
							$pane.children().get(0).prime	<%-- for local, noop; for remote, pull when necessary. --%>
						);
						$pane.show();
						$content.triggerHandler("activated" );
					}else{
						//get$panes().hide();
					}
				}
			}
			,
			_pane_index2unselect=function (index) {
				if (index===-1) {
				}else{
					var panes=get$panes();
					if (index>=panes.length) {
						panes.hide();
					} else {
						var p = panes.eq(index);
						let $p = $(p);
						panes.eq(index).hide();

						let content = $p.children().get(0);
						let $content = $(content);

						$content.triggerHandler("deactivated");
						
					}
				}
			}
			,
			index_set=function (i) {
				var oldIndex=_index_get();
				<%--
					i%=get$panes().length;--%>
				if (i!==oldIndex) {
					_pane_index2unselect(oldIndex);
					_pane_index2select(i);
					trig.changed();
				}
				
			}
			,
			replaceInPlate_with$parentOfCachedPanes=function ($parentOfCachedPanes) {
				$plateEle.empty();
				var contents2b=$parentOfCachedPanes.children();
				for (var i = 0;i<contents2b.length; i++) {
					$plateEle.append(
						$("<div>").append(contents2b[i])
						.css({overflow:"hidden", height:"100%"})
					);
				}
				$plateEle.children().hide();
			}
			,
			ini = function () {

			}
			,
			on=function(){
				
			}
			,
			trig={
				changed:function () {
					$boxer.triggerHandler("changed");
				}

			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						fit$:{
							value:replaceInPlate_with$parentOfCachedPanes
						}
						,
						fill$:{
							value:replaceInPlate_with$parentOfCachedPanes
						}
						,

						index:{
							set:index_set
							,
							get:_index_get
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
