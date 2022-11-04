<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ OutputCache Shared="true" VaryByParam="none" Duration="36000000" %>


<% #if (false) %>
<style>
	<% #endif %>
.nilnul-carousel-wrapper {
  overflow: hidden;
  width: 90%;
}
.nilnul-carousel-wrapper * {
  box-sizing: border-box;
}

.nilnul-carousel {
  transform-style: preserve-3d;
}

.nilnul-carousel-page {
	opacity: 0;
	position: absolute;
	top: 0;
	width: 100 %;
	margin: auto;
	padding: 1rem 4rem;
		z - index: 100;
	transition: transform .5s, opacity .5s, z - index .5s;
	}

.nilnul-carousel-page.initial, <%-- Sometimes scripts can take a little bit of time to load, so let’s show the initial one, make it relative so the parent container expands, and bring it to the front using z-index. These styles will also apply to our active item for when the carousel is being controlled.--%>
.nilnul-carousel-page.active {
  opacity: 1;
  position: relative;
  z-index: 900;
}

.nilnul-carousel-page.prev,
.nilnul-carousel-page.next {
  z-index: 800;
}
.nilnul-carousel-page.prev {
  transform: translateX(-100%); /* Move 'prev' item to the left */
}
.nilnul-carousel-page.next {
  transform: translateX(100%); /* Move 'next' item to the right */
}

.nilnul-carousel-button-prev,
.nilnul-carousel-button-next {
  position: absolute;
  top:50%;
  width: 3rem;
  height: 3rem;
  background-color: #FFF;
  transform: translateY(-50%);
  border-radius: 50%;
  cursor: pointer; 
  z-index: 1001; /* Sit on top of everything */
  border: 1px solid black;
}
.nilnul-carousel-button-prev {
  left:0;
}
.nilnul-carousel-button-next {
  right:0;
}
.nilnulcarousel-button-prev::after,
.nilnul-carousel-button-next::after {
  content: " ";
  position: absolute;
  width: 10px;
  height: 10px;
  top: 50%;
  left: 54%;
  border-right: 2px solid black;
  border-bottom: 2px solid black;
  transform: translate(-50%, -50%) rotate(135deg);
}
.nilnul-carousel-button-next::after {
  left: 47%;
  transform: translate(-50%, -50%) rotate(-45deg);
}
	<% #if (false) %>
</style>
<% #endif %>
