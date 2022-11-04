﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Css.ascx.cs" Inherits="nilnul.web._ctr_._WEB_.menu_._cascade.Css" %>
.menu {
  display: block;
  z-index: 999999;
}
.menu li {
  display: inline-block;
  position: relative;
}
.menu li.dropdown:hover > .submenu {
  display: block;
}
.menu li a {
  display: block;
  padding: 12px 8px;
  background: #ccc;
}
.menu li.dropdown > a::after {
  content: "\e259";
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: 400;
  margin-left: 8px;
  font-size: 10px;
}
.menu li a::before {
  content: "\e179";
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: 400;
  margin-right: 8px;
}
.menu li a:hover {
  background: grey;
}

.menu .submenu {
  display: none;
}
.submenu {
  margin: 0px;
  padding: 0px;
  position: absolute;
  left: 0px;
  list-style-type: none;
  display: block;
  width: 200px;
  z-index: 9;
}
.submenu li {
  display: block;
}
.submenu li a {
  display: block;
  background: #999;
  color: #fff;
  padding: 8px 6px;
  margin-bottom: 1px;
}
.menu .submenu > li.dropdown:hover > .submenu {
  display: block;
}

.menu .submenu .submenu {
  position: absolute;
  left: 200px;
  top: 0px;
}

.submenu li.dropdown > a:after {
  content: "\e258";
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: 400;
  margin-left: 8px;
  font-size: 10px;
}
