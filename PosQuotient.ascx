<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache VaryByParam="l" Duration="360000" %>
<%-- 
	a postive quotient in the form like  18/10.
	when it's winded down, the numerator decreases till 1, so 18/10 will turn 1/10; then further winding down will increase the denominator, to something like 1/21.

	when it's winded up, the denominator decrease to 1. then increase the numerator.


	so when the number is 2, decreasing will change it to 1,  1/2, 1/3, etc.
	when the number is 18/10, winding up will change it  to 18/9, 18/8, ... , 18, then 19, 20, ...

	this control is primarily used for ordering, assigning wieghts among samples, etc.
--%>
<span style=" display: inline-block; vertical-align: middle; flex-wrap:nowrap;padding:0px;overflow:hidden;">
	<input type="text" style="vertical-align: middle; margin-right: 0px;" />
	<span style="position:relative;display:inline-block;vertical-align:middle; height:100%;">

		<span style="position: absolute; top: 0px; right: 0px; height: 50%; display: block; text-align: center; vertical-align: middle;">&#x25b2;

		</span>
		<span style="position: absolute; bottom: 0px; right: 0px; height: 50%; display: block; text-align: center; vertical-align: middle;">&#x25bc;

		</span>

	</span>


</span>
