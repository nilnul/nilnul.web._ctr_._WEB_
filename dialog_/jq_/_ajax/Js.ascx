<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.dialog_.jq_._ajax.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,fillUi=children[i++]
			,$fillUi=$(fillUi)
			,stateUi=children[i++]
			, $stateUi = $( stateUi )
			,
			_fill_url_set = function (url) {
				fillUi.url = url;
			}
			,
			ini = function () {
				
			}
			,
			on=function(){
				
			}
			,
			trig={

			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						get: {
							writable: false
							,
							value: function (url) {
								fillUi.get(url);
								$fillUi.dialog();
							}
						}
						,
						url: {
							set:_fill_url_set
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
