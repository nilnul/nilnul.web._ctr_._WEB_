<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.dialog_.jq_.ajax._anchor.Js" %>
<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer=child.parentElement
			,$boxer=$(boxer)
			,children=boxer.children
			,i=0
			,dialogUi=children[i++]
			, $dialogUi = $( dialogUi )
			,anchorUi=children[i++]
			, $anchorUi = $( anchorUi )
			,stateUi=children[i++]
			, $stateUi = $( stateUi )
			,
			_anchor_caption_set = function (v) {
				$anchorUi.text(v);
			}
			,
			ini = function () {
				_anchor_caption_set(
					$boxer.data("caption")
				);
				var v=$boxer.data("url")
				if ( v ) {
					dialogUi.url = v;
				}
			}
			,
			on = function () {
				anchorUi.click(
					function () {
						dialogUi.get();
					}
				);
				
			}
			,
			trig={

			}
			,pub = function () {
				Object.defineProperties(
					boxer
					,
					{
						url: {
							set: function (v) {
								dialogUi.url = v;
							}
						}
						,
						caption: {
							set: _anchor_caption_set
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
