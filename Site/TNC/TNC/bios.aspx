<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bios.aspx.cs" Inherits="TNC.bios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" href="style.css" type="text/css" />
    <style type="text/css">
        body
        {
         margin:0;
        }
       #logo
        {
            background: url("images/tnc-smalllogo.jpg");
            background-color:#EFFDEE;
            background-repeat: no-repeat;
            padding:0px;
            margin:0px;
            position:relative;
        }
        #bios
        {
           
        }
        #Names
        {
            
        }
        </style>
</head>
<body> <div id="logo">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <!--googleoff: all-->
    <div id="globalheader">
        <ul id="globalnav">
            <li id="gn-home"><a href="Default.aspx" class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HOME</a></li>
            <li id="gn-press"><a href="pressrelease.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRESS</a></li>
            <li id="gn-case"><a href="case.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STUDIES</a></li>
           <li id="gn-gallery"><a href="gallery.aspx">&nbsp;&nbsp;&nbsp;&nbsp;GALLERY</a></li>
            <li id="gn-bios"><a href="bios.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BIOS</a></li>
            <li id="gn-contact"><a href="contactus.aspx">&nbsp;&nbsp;&nbsp;&nbsp;CONTACT</a></li>
            <li id="gn-blog"><a href="blog.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BLOG</a></li>
        </ul>
    </div>
    <!--/globalheader-->
    <!--googleon: all-->
    <form id="form1" runat="server">
    <div id = "bios">
        <img src="images/TNC-Bios.jpg" />
    </div>
    </form>
</body>
</html>
