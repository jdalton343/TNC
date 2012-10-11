<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pressrelease.aspx.cs" Inherits="TNC.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="stylesheet" href="style.css" type="text/css" /> <style type="text/css">
       body { background-image:url("images/TNC-press.jpg");
               background-repeat:no-repeat;}
                          #more
                          {
                              position: absolute; 
                              font-family: arial; 
                              top: 799px; 
                              font-size: 16px; 
                              font-weight: bold; 
                              left: 743px;
                              
                          }
                          #seemore
                          {
                              position: absolute; 
                              top: 853px; 
                              font-family: arial; 
                              font-weight: bold; 
                              left: 729px; 
                              font-size: 12px;
                          }
 </style>
    <title></title>
</head>
<body><!--googleoff: all-->
<div id="globalheader">
<ul id="globalnav">
	<li id="gn-home"><a href="">Home</a></li>
	<li id="gn-press"><a href="pressrelease.aspx">Press</a></li>
	<li id="gn-case"><a href="">Case Studies</a></li>
	<li id="gn-gallery"><a href="">Gallery</a></li>
	<li id="gn-bios"><a href="">Bios</a></li>
	<li id="gn-contact"><a href="">Contact</a></li>
	<li id="gn-blog"><a href="">Blog</a></li>
</ul>
</div><!--/globalheader-->
<!--googleon: all-->
    <form id="form1" runat="server">
    <div id="more" >
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/readmorerelease.aspx">READ MORE..</asp:HyperLink>
        
    
    </div>
    <div id = "seemore"><asp:HyperLink ID = "HyperLink2" runat="server">SEE MORE PRESS RELEASES</asp:HyperLink></div>
    </form>
</body>
</html>
