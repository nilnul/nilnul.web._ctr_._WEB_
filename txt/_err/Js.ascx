<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.txt._err.Js" %>
<%@ OutputCache Duration="3600000" VaryByParam="l" Shared="true" VaryByCustom="l" %>

<% #if false %>
<script type="text/ecmascript">
	<% #endif %>
	var <%=unique_func_name %>=<%=unique_func_name %>|| <%--/* considering multiple recurrence*/--%> function (child) {
		var boxer = child.parentElement
			,
			$boxer = $(boxer)
			,
			children = boxer.children
			,
			i = 0
			,
			txt = children[i++]
			,
			$txt = $(txt)
			,
			err = children[i++]
			,
			$err = $(err)
			,
			_check = function (x) { return ""; }
			,
			on = function () {
				$txt.on('changed',
					function () {
						txt$changed();
					}
				);
			}
			,
			_check$set = function (f) {
				var old_beValid = err.beValid;
				_check = f;
				_validate();
				if (!(old_beValid === err.beValid)) {
					trig.report(); <%-- not changed value, but the validity changed--%>
				}
			}
			,
			___required_gen = function (b) {
				return function () {
					if (b) {
						return nilnul.txt.nulable.be_.nulOrWhite(txt.val) ? "<%: nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("required","必填")%>" : "";
					}
				};
			}
			,
			___stretch_gen = function (min, max) {
				return function () {
					var v = txt.val || "";
					if (min) {
						if (v.length < min) {
							return "<%=nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("cannot be shorter than ","不能短于")%>" + `${min}`;
						}

					}

					if (max || max === 0) {
						if (v.length > max) {
							return "<%=nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("cannot be longer than ","不能长于")%>" + `${max}`;
						}
					}
				};
			}
			,
			___regex_gen = function (regex) {
				var regexObj = new RegExp(regex);
				return function () {
					return regexObj.test(txt.val) ? "" : "<%: nilnul.web.svr.module_.ling_.enCn_.BySessionX.GetEnCn("invalid","格式有误")%>";
				};
			}
			<%--__constraints_members = {
				set required(b) {
					_constraints.required = b;
					_check$set_byAlterConstraints();
				}
				,
				set stretch( range ) {
					this.stretch
				}
			}
			,--%>
			,
			_constraints = {

			}
			,
			__generateCheckFroConstraints = function (constraints) { <%--a check, by constraints--%>
				var v = constraints;
				var funcs = [];
				if (v.required) {
					funcs.push(___required_gen(true));
				}
				if (v.stretch) {<%--eg:[], [min],[,max],[min,max]--%>
					funcs.push(___stretch_gen(v.stretch));
				}
				if (v.regex) {
					funcs.push(___regex_gen(v.regex));
				}
				if (v.func) {
					funcs.push(v.func);
				}
				return function () {
					for (let f of funcs) {
						var t = f(txt.val);
						if (t) {
							return t;
						}
					}
					return "";
				};
			}
			,
			/*
			 * @obsolete (see generateCheckFroConstraints)
			 */
			__checkByConstraints = function () { <%--a check, by constraints--%>
				var v = _constraints;
				var funcs = [];
				if (v.required) {
					funcs.push(___required_gen(true));
				}
				if (v.stretch) {<%--eg:[], [min],[,max],[min,max]--%>
					funcs.push(___stretch_gen(v.stretch));
				}
				if (v.regex) {
					funcs.push(___regex_gen(v.regex));
				}
				if (v.func) {
					funcs.push(v.func);
				}
				for (let f of funcs) {
					var t = f(txt.val);
					if (t) {
						return t;
					}
				}
				return "";
			}
			,
			_check$set_byConstraints = function () {
				_check$set(
					__checkByConstraints
				);
			}
			,
			_check$set_bySetConstraints = function (constraints) {
				_check$set(__generateCheckFroConstraints(constraints));
				<%--
				_constraints = constraints;
				_check$set_byConstraints();--%>
			}
			,
			_check$set_byAlterConstraints = {
				required: {
					set: function (v) {
						_constraints.required = v;
						_check$set_byConstraints();

					}
					, get: function () {
						return _constraints.required;
					}
				}
				,
				stretch: {
					get: function () {
						return _constraints.stretch;
					}
					,
					set: function (v) {
						_constraints.stretch = v;
						_check$set_byConstraints();

					}
				}
				,
				regex: {
					get: function () {
						return _constraints.regex;
					}
					,
					set: function (v) {
						_constraints.regex = v;
						_check$set_byConstraints();

					}
				}
				,
				func: {
					get: function () {
						return _constraints.func;
					}
					,
					set: function (v) {
						_constraints.func = v;
						_check$set_byConstraints();

					}
				}
			}
			,
			txt$changed = function () {
				var old_beValid = err.beValid;
				_validate();
				if (old_beValid || err.beValid) {
					trig.report();
				}
			},

			trig = {
				report: function () {
					$boxer.triggerHandler(
						'report'
					);
				}
			}
			,
			_validate = function () {
				err.txt = _check(txt.val);
				<%--err.txt = nilnul.func.exe( _check, [txt.val] );--%>
			}
			,
			pub = function () {
				Object.defineProperties(
					boxer,
					{
						beOk: {
							get: function () {
								return err.beOk;
							}
						}
						,
						beValid: {
							get: function () {
								return err.beValid;
							}
						}
						,
						val: {
							get: function () {
								return txt.val;
							}
							,
							set: function (x) {
								txt.val = x;
							}
						}
						,
						constraints: {
							set: _check$set_bySetConstraints
							,
							get: function () {
								return _check$set_byAlterConstraints;
							}
						}
						<%--,
						conditions: {<%--ordered/named constrains--%><%--
							set: function ( v ) {
								var funcs= [];
								if ( v.required ) {
									[].push(_required_gen(true));
								}
								if ( v.minmax ) {<%--eg:[], [min],[,max],[min,max]--%><%--
									[].push(_minmax_gen(constraints.minmax));
								}
								if ( v.regex ) {
									[].push(_regex_gen(constraints.regex));
								}
								if ( v.func ) {
									[].push(constraints.func);
								}
								_check$set(
									function () {
										for ( let f of funcs ) {
											var t = f( txt.val );
											if ( t ) {
												return t;
											}
										}
									}
								);
							}
						}--%>
						,
						check: {<%--a function to check the validity--%>
							set: _check$set
						}
						,
						beErr: {
							get: function () { return err.beErr; }
						}
						,
						disable: {
							value: function () {
								txt.disable();
							}
						},
						enable: {
							value: function () { txt.enable(); }
						}
					}
				);
			}
			,
			ini = function () {
				_validate();
			}
			,
			ready = function () {
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
