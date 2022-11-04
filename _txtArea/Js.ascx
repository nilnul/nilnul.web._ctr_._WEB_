<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._txtArea.Js" %>

<%-- 
http://stackoverflow.com/questions/574941/best-way-to-track-onchange-as-you-type-in-input-type-text#		
So, you want the onchange event to fire on keydown, blur, and paste? That's magic.

If you want to track changes as they type, use "onkeydown". If you need to trap paste operations with the mouse, use "onpaste" (IE, FF3) and "oninput" (FF, Opera, Chrome, Safari1).

		Looks like oninput does not work on textarea in Safari...

		onkeypress should be used instead of onkeydown. onkeydown fires when a key is clicked down. If a user holds down a key, the event will only fire once for the first character. onkeypress fires whenever a char is added to the text field. 

	  
With jquery 1.8.3, looks like: $().on('change keydown paste input', function() {}) 
 
		
--%>


<% #if false %>
<script type="text/ecmascript">
		<% #endif %>

	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
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
		
			determineChange = function () {
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
				$inputEle.on(
					'keyup paste change input'
					,
					determineChange
				);
				$inputEle.on(
					'propertychange'
					,
					function (e) {
						if ( nilnul.txt.eq_.caseInsensitive(e.propertyName, "value")) {
							determineChange();
						}
    
					}
				);
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

			}
			,
			ini = function () {

			}
			,
		
			ready=function () {
				ini();
				check();
				on();
				pub();
    
			}
		;
		ready();
		
	};


	<% #if false %>


</script>

<% #endif %>

