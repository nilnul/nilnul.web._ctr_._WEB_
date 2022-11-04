<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._dialog.Js" %>
<%@ OutputCache VaryByParam="none" Duration="36000000" Shared="true" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,containerUi=children[i++]
			,
			j=0
			,topBarEle=containerUi.children[j++]
				,$topBarEle=$(topBarEle)

			,plateEle=containerUi.children[j++]
			,$plateEle=$(plateEle)

			,stateEle=containerUi.children[j++]
			,$stateEle=$(stateEle)
			,parent,
			ini = function () {
				parent=boxer.parentElement;
			}
			,
			on=function(){
				$topBarEle.on("closing"
					,function () {
						var lastRet = trig.closing();
						if ( lastRet!==false ) {
							$boxer.hide();
						}
					}
				);
				$topBarEle.on("maxing",function () {
					if (boxer.parentElement!=parent) {
						<%-- maxized--%>
						$(parent).append($boxer);
						return;
					}
					
					<%--var zIndex= nilnul.eles.zMax.next();--%>
					var zMax=nilnul.eles.zMax();
					var thisZ= +$boxer.css('zIndex'); <%-- "+" casts to number or NaN --%>
					if (thisZ < zMax) {
    					$boxer.css("zIndex", zMax+1);
					}

					$(document.body).append($boxer); <%-- If an element selected this way is inserted into a single location elsewhere in the DOM, it will be moved into the target (not cloned):--%>

				});
			}
			,
			trig={
				closing:function () {
					$boxer.triggerHandler("closing");
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						fit: {
							writable: false
							,
							value:function (v) {
								$plateEle.empty();
								$plateEle.append(v);
							}
						}
						,
						setContent:{
							value:function (v) {
								$plateEle.empty();
								$plateEle.append(v);
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
