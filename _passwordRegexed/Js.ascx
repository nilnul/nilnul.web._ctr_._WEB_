<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._passwordRegexed.Js" %>


<% #if false %>
<script type="text/ecmascript">
		<% #endif %>

	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement;
		var children=boxer.children;
		var i=0,
			keyEle = boxer.firstElementChild
			,
			$boxer=$(boxer)
			,
			$keyEle=$(keyEle)
		;


		var regex;

		var regexTested;

		var

			on = function () {
				$keyEle.on(
					"changed"
					,
					function () {
						var old_regexTested = regexTested;
						validate();
						if (old_regexTested || regexTested) {	//validity is reserved

							trig.escalated();
							return;
						}
					}
				);
				$boxer.focus(
					function () {
						keyEle.focus();
					}
				);
			},

			regex_assigned = function () {
				var old_regexTested = regexTested;
				validate();
				if (old_regexTested !== regexTested) {	//validity is reserved
					trig.escalated();
				}

			}
		
			,

			validate = function () {
				if (regex) {
					regexTested = regex.test(txt.valOp());
				} else {
					regexTested = true;
				}
			}
			,

			trig={
				escalated:function () {
					$boxer.triggerHandler("escalated");
    
				}
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						val:{
							get:function () {
								return keyEle.val;
							}
							,
							set:function (x) {
								keyEle.val=x;
							}
						}
						,
						regexTxt:{
							get:function () {
								return regex.source;
							},
							set:function (x) {
								regex=RegExp(x);
								regex_assigned();
							}
						}
						,
						regexTested:{
							get:function () {
								return regexTested;
    
							}
						}
						,disable:{
							value:function () {
								keyEle.disable();
							}
						}
						,enable:{
							value:function () {
								keyEle.enable();
							}
						}
						,
						matches:{
							get:function () {
								return regex.exec(keyEle.val);

							}
						}
					}
				
				);

			}
			,
			 ini = function () {

			 }
			,ready=function () {
				ini();
				validate();
				on();	//attachEvent to Text
				pub();

			}
		;
		ready();


	}


	<% #if false %>


</script>

<% #endif %>

