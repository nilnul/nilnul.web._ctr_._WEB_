<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ OutputCache Shared="true" Duration="3600000" VaryByCustom="l" VaryByParam="none"  %>

<%-- First you have to change your [OutputCache] to include VaryByParam="":

[OutputCache(Duration = CACHE_DURATION, VaryByCustom = "$LanguageCode;myParam", VaryByParam = "", Location = OutputCacheLocation.Server)]
Becuase by default its value is "*" (All). --%>
<%@ Register Src="../Labeled.ascx" TagPrefix="uc1" TagName="Labeled" %>

<uc1:Labeled runat="server" ID="Pass" />
