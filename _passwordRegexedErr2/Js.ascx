﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_._passwordRegexedErr2.Js" %>
<%--<%@ OutputCache  Duration="3600000" VaryByParam="id" %>--%>

<%--<%@ Register Src="~/Validator2.ascx" TagPrefix="uc1" TagName="Validator" %>--%>

<% #if (false) %>
<script src="http://localhost:12345/script/_web/jquery.js">

</script>
<script src="http://localhost:12345/script/_web/nilnul.js">

</script>

<% #endif %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	;var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer=child.parentElement
			,
			$boxer=$(boxer)
		
		;
		var children=boxer.children;
		var i=0
			, 
			passRegexedEle = children[i++]
			,
			$passRegexedEle=$(passRegexedEle)
			,
			errEle = children[i++]
		,
			$errEle=$(errEle)
		;
		var errYesMsg;

		var
		check = function () {
			errEle.msg=(passRegexedEle.regexTested ? "" : errYesMsg);
		},
		on = function () {

			$passRegexedEle.on(
				"escalated"
				,
				function () {
					check();
					trig.escalated()
				}
			);
			
		},
		trig =  {
			escalated:function () {
				$boxer.triggerHandler("escalated");
			}
		},
		pub = function () {
			Object.defineProperties(
				boxer,
				{
					errYesMsg:{
						get:function () {
							return errYesMsg;

						}
						,set:function (x) {
							errYesMsg = x || "";
							validate();
						}
    
					}
					,
					regexTxt:{
						set:function (x) {
							passRegexedEle.regexTxt=x;
						}
					}
					,
					beErr:{
						get:function () {
							return errEle.beErr;
						}
					}
					,val:{
						get:function () {
							return passRegexedEle.val;
						},
						set:function (x) {
							passRegexedEle.val=x;
						}
					}
				}
			);
		},

		ini = function () {
		}
		,ready=function () {
			ini();
			validate();
			on();
			pub();

		}
		;

		ready();

	};

	<% #if false %>


</script>

<% #endif %>

