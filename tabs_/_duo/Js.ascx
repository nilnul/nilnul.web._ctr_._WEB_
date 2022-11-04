<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.tabs_._duo.Js" %>


<% #if false%>
<script>
	<% #endif %>
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var 
			boxer=child.parentElement
			,$boxer=$(boxer)
			,
			children=boxer.children
			,
			i=0
			,thead=children[i++]
				,$thead=$(thead)
				,btns=thead.firstElementChild
				,$btns=$(btns)


			,tbody=children[i++]
				,$tbody=$(tbody)
				,tr=tbody.firstElementChild
					,$tr=$(tr)

					,td=tr.firstElementChild
						,$td=$(td)
						,panes=td.firstElementChild
							,$panes=$(panes)

			,btns_changed=function () {
		
			}
			
			
		
			,on=function(){
				$btns.on(
					"changed"
					,
					function () {
						panes.activePaneIndex=btns.index;
						trig.changed();
						
					}
				);
			}
			,
			trig={
				changed:function () {
					$boxer.triggerHandler("changed");
				}
			}
			,pub = function () {
				Object.defineProperties(
					boxer,
					{
						replaceInPane0:{
							value:function (ele) {
								panes.replaceInPane0(ele);
							}
						}
						,
						replaceInPane1:{
							value:function (ele) {
								panes.replaceInPane1(ele);
							}
						}
						,
						btn0Txt:{
							set:function (x) {
								btns.btn0Txt=x;
							}
						}
						,
						btn1Txt:{
							set:function (x) {
								btns.btn1Txt=x;
							}
						}
						,
						btnTxtS:{
							set:function (txts) {
								btns.btn0Txt=txts[0];
								btns.btn1Txt=txts[1];
							}
						}

						
					}
				);
			}, 
			ini=function () {
				
				$boxer.css(
					{
						padding:0
						,
						margin:0
					,
						border:"1px solid green"
						,background:"cyan"
					,width:"100%"

					}
				);
				$thead.css(
					{
						padding:0
						,
						margin:0
					,
						border:"none"
					,width:"100%"

					}
				);

				$tbody.css(
					{
						padding:0
						,
						margin:0
					,
						border:"none"
					,width:"100%"
					}
				);


				$tr.css({
					padding:0
						,
					margin:0
					,
					border:"none"
					,width:"100%"
					,background:"cyan"
			
				});

				$td.css({
					padding:0
						,
					margin:0
					,width:"100%"
					,background:"cyan"
					,borderTop:"none"
					,borderLeft:"1px solid blue"
					,borderRight:"1px solid blue"
					,borderBottom:"1px solid blue"
				});
			}
			,
			ready=function () {
				ini();
				on();
				pub();
    
			}
		;
		ready();
	};
	<% #if false%>
</script>
<% #endif %>