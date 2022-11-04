<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_._trio_._btns.Js" %>


<% #if false%>
<script>
	<% #endif %>
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var 
			grip=child,

			boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,
			i=0
			,tr=boxer
				,td0=children[0]
				,$td0=$(td0)
						,
						btn0=td0.firstElementChild
							,$btn0=$(btn0)
					,td1=children[1]
						,$td1=$(td1)
						,btn1=td1.firstElementChild
							,$btn1=$(btn1)
					,td2=children[2]
						,$td2=$(td2)
						,btn2=td2.firstElementChild
							,$btn2=$(btn2)
			,btns=[btn0,btn1,btn2]
			,$btns=$(btns)


			,
			classSelected="<%=classSelected%>"
				,
			btn0_isSelected=function () {
				return btn0.disabled===true;
				<%--return $btn0.hasClass(classSelected);--%>
    
			}
			,
			btn1_isSelected=function () {
				return btn1.disabled===true;

				<%--return $btn1.hasClass(classSelected);--%>
  
			}
			,
			btn2_isSelected=function () {
				return btn2.disabled===true;

				<%--return $btn1.hasClass(classSelected);--%>
  
			}
			,
			_selectedBorder="1px solid blue"
			,
			_index_set_0=function(){
				
				ele1_setUnselected();
				ele2_setUnselected();
				ele0_setSelected();
			
			}
			,
			_index_set_1=function(){
				
				ele0_setUnselected();
				ele2_setUnselected();

				ele1_setSelected();
			
			}
			,
			_index_set_2=function(){
				
				ele0_setUnselected();
				ele1_setUnselected();
				ele2_setSelected();
			
			}
			,

			ele0_setSelected=function () {
				btn_setSelected_0();
				td_setSelected_0();
			}
			,
			ele0_setUnselected=function () {
				btn_setUnselected($btn0,btn0);
				td_setUnselected($td0);
			}
			,
			ele1_setSelected=function () {
				btn_setSelected($btn1,btn1);
				td_setSelected($td1);
			}
			,
			ele1_setUnselected=function () {
				btn_setUnselected_1();
				td_setUnselected_1();
			}
			,
			ele2_setSelected=function () {
				btn_setSelected($btn2,btn2);
				td_setSelected($td2);
			}
			,
			ele2_setUnselected=function () {
				btn_setUnselected_2();
				td_setUnselected_2();
			}
			,

			td_setUnselected=function ($td) {
				$td.removeClass(
					"nilnul-tabs-head-tag-selected"
				);

				$td.addClass(
					"nilnul-tabs-head-tag-unselected"
				);
				
			}
			,
			td_setUnselected_0=function () {
				td_setSelected($td0);
			}
			,
			td_setUnselected_1=function () {
				td_setUnselected($td1);
			}
			,
			td_setUnselected_2=function () {
				td_setUnselected($td2);
			}
			,
			td_setSelected=function ($td) {

				$td.removeClass(
					"nilnul-tabs-head-tag-unselected"
				);

				$td.addClass(
					"nilnul-tabs-head-tag-selected"
				);

			}
			,
			td_setSelected_0=function () {
				td_setSelected($td0);
			}
			,
			td_setSelected_1=function () {
				td_setSelected($td1);
			}
			,
			td_setSelected_2=function () {
				td_setSelected($td2);
			}
			,
			btn_setUnselected=function ($btn,btn) {
				$btn.css({
					cursor:"pointer"
				});

				$btn.removeClass(
					"nilnul-tabs-head-tag-selected"
				);

				$btn.addClass(
					"nilnul-tabs-head-tag-unselected"
				);
				btn.disabled=false;
			}
			,
			btn_setSelected=function ($btn,btn) {
				$btn.css({
					cursor:"default"
				});
				
				$btn.removeClass(
					"nilnul-tabs-head-tag-unselected"
				);

				$btn.addClass(
					"nilnul-tabs-head-tag-selected"
				);


				btn.disabled=true;
			}
			,
			btn_setUnselected_0=function () {
				btn_setUnselected($btn0,btn0);
			}
				,
			btn_setUnselected_1=function () {
				btn_setUnselected($btn1,btn1);
			}
				,
			btn_setUnselected_2=function () {
				btn_setUnselected($btn2,btn2);
			}
				,
			btn_setSelected_0=function () {
				btn_setSelected($btn0,btn0);
			}
			,
			btn_setSelected_1=function () {
				btn_setSelected($btn1,btn1);
			}
			,
			btn_setSelected_2=function () {
				btn_setSelected($btn2,btn2);
			}
			,

			index_get=function () {
				return [btn0,btn1,btn2].findIndex( 
					function(x){ 
						return  x.disabled===true ;
					}
				);
			}
			,
			index_set=function (index) {
				
				if (index!==index_get()) {
					if (index===0) {
						_index_set_0()
					}else if(index===1){
						_index_set_1();
					}else {
						_index_set_2();
					}
					trig.changed();
				}
    
			},
			on=function(){
				$btn0.click( 
					function(){
						_index_set_0();
						trig.changed();
					}
				);

				$btn1.click(
						function () {
							_index_set_1();
							trig.changed();
						}
				);
				$btn2.click(
						function () {
							_index_set_2();
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
						,
						btn0Txt:{
							set:function (x) {
								$btn0.text(x);
							}
						}
						,
						btn1Txt:{
							set:function (x) {
								$btn1.text(x);
							}
						}
						,
						btn2Txt:{
							set:function (x) {
								$btn2.text(x);
							}
						}
						,
						txts:{
							set:function(x){
								$btns.each(function (i,e) {
									$(e).text(x[i]);
								});
							}
						}
						
					}
				);
			}, 
			ini = function () {
				$([btn0,btn1, btn2]).css({
					border:"none"
					,width:"100%"
					,height:"100%"
					,margin:0
					

				});
				$([td0,td1,td2]).css(
					{
						padding:0
						,
						margin:0
						
					}
				);
				$(tr).css({
							padding:0
						,
							margin:0
					,
							border:"none"
					,width:"100%"
			
				});

				_index_set_0();

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
