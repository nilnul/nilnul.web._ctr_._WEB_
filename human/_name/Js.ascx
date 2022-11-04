<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.human._name.Js" %>

<%@ OutputCache Duration="36000000" VaryByParam="l" VaryByCustom="l" Shared="true" %>
<%-- layout separted from logic --%>

<% #if false %>
<script>
	<% #endif %>
	var <%=unique_func_name %>= function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children
			,
			childFeeds
			,
			$childFeeds
			,
			_beingOk = {
				unary: function () {
					return childFeeds.every( x=> x.beOk);
				}
				,
				all: function () {
					return this.unary();
				}
			}
			,
			beOk
			,
			validate = function () {
				beOk = _beingOk.all();
			}
			,
			ini = function () {
				childFeeds= children.slice(0, children.length-1);
				$childFeeds = $(childFeeds); /* $boxer.children(":lt(3)");*/
				validate();

			}
			,
			_decide = function () {
				var oldBeOk = beOk;
				validate();
				if (
					nilnul.bit.op_.binary_.ne(oldBeOk, beOk)
				) {
					trig.report();
					return;
				}
				if (beOk) {
					if (
						! childFeeds.every(x => x.beChanged === false)
					) {
						trig.report();
					}
				}
			}
			,
			on = function () {
				$childFeeds.on(
					"report"
					,
					_decide
				);

			}
			,
			trig = {
				report: function () {
					$boxer.triggerHandler('report');
				}
			}
		,
			_pub = {
				childValS: function () {
							return childFeeds.map(x=>x.val);

				}
		}
			,
			pub = function () {
				boxer
					,
				{
					childValS: {
						get: _pub.childValS
					},
					val: {
						get: function () {
							return Object.fromEntries(
								_pub.childValS().map(
									function (e,i) {
										return [$boxer.data("valKeys")[i], e];
									}
								)

							);
						}
						,
						set: function (v) {
							v.entries.forEach(
								(v, i) => {
									var index =
										children.indexOf[v[0]];
									if (index>=0) {
										children[index].val = v[1];
									} 
								}
							);
						}
					}
				}

			}
			, ready = function () {
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
