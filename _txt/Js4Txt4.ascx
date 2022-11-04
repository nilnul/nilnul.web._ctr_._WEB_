<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js4Txt4.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._txt.Js4Txt4" %>

<% #if false %>
<script type="text/ecmascript">
		<% #endif %>
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,
			$boxer=$(boxer)
			,
			children=boxer.children
			,i=0
			,
			inputEle = boxer.firstElementChild
			,
			$inputEle=$(inputEle)
			,
			val 
			,
			val_set=function (x) {
				if (x===val) {
					
				}else {
					inputEle.value=x;
					check();
					trig.changed();
				}
    
			}
			,
			val_get=function () {
				return val;
			}
			,
			check = function () {
				val = inputEle.value;
			}
			,
		
			_determineChange = function () {
				var oldVal = val;
				check();
				if (val !== oldVal) {
					trig.changed();
				}
			},
			on = function () {
				$boxer.on("focus", function () {
					$inputEle.focus();
				});
			}

			,
		
			trig={
				changed:function () {
					$boxer.triggerHandler("changed");
				}
			},
		
			pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						val:{
							get:val_get
							,
							set:val_set

						}
						,value:{
							get:val_get
						,
							set:val_set
						}
						,
						disable:{
							value:function () {
								inputEle.disabled = true;
							}
						},
						enable:{
							value:function () {
								inputEle.disabled=false;
							}
						}
						,
						focus:{
							value:function () {
								$inputEle.focus();
							}
						}
						
					}
				);
				
				Object.defineProperties(
					inputEle
					,
					{
						_determineChange :{value: _determineChange}
						,
						propertychange_then :{
							value: function (event) {
								if (event.propertyName.toLowerCase() == "value") {
									_determineChange();
								}
							}
						}
						,

						keyup_then:{
							value: function () {
								_determineChange();
							}
						}
					
					
					}
					
				);
				

			}
			,
			ini = function () {
				check();

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


	<% #if false %>


</script>

<% #endif %>

