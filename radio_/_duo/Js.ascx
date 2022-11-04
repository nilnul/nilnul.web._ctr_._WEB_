<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.radio_._duo.Js" %>

<% #if false%>
<script>
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var 
			boxer=child.parentElement
			,
			children=boxer.children
			,
			i=0
			,btn0=children[0].firstElementChild
			,btn1=children[1].firstElementChild
			,

			$boxer=$(boxer)
			,$btn0=$(btn0)
			,$btn1=$(btn1)
			,
			classSelected="<%=classSelected%>"
				,
			btn0_isSelected=function () {
					return $btn0.hasClass(classSelected);
    
			}
			,
			btn1_isSelected=function () {
					return $btn1.hasClass(classSelected);
  
			}
			,
			btn1_setSelected=function () {
				btn1.disabled=true;
				$btn1.addClass(classSelected);
			}
			,
			btn1_setUnselected=function () {
				btn1.disabled=false;
				$btn1.removeClass(classSelected);
			}
				,
			btn0_setUnselected=function () {
				btn0.disabled=false;
				$btn0.removeClass(classSelected);
			}
				,
			btn0_setSelected=function () {
				btn0.disabled=true;
				$btn0.addClass(classSelected);
			}
			,
			index_get=function () {
				return btn0_isSelected()?0:1;
			}
			,
			index_set=function (index) {
				index = index ===0 ? 0:1;
				if (index!==index_get()) {
					if (index===0) {
						btn0_setSelected();
						btn1_setUnselected();
					}else {
						btn0_setUnselected();
						btn1_setSelected();
					}
					trig.changed();
				}
    
			},
			on=function(){
				$btn0.click( 
					function(){
						btn0_setSelected();
						btn1_setUnselected();
						trig.changed();
					}
				);

				$btn1.click(
						function () {
							btn1_setSelected();
							btn0_setUnselected();
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
			,pub = function () {
				Object.defineProperties(
					boxer,
					{
						index:{
							get:index_get,
							set:index_set
						}
						
					}
				);
			}, 
			ini = function () {
				on();
				pub();
			};
		ini();
	}
	;
	<% #if false%>
</script>
<% #endif %>
