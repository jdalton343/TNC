<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="TNC.contactus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" href="style.css" type="text/css" />
    <style type="text/css">
        body
        {
        margin:0px;
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
        #container
        {
            margin-left:250px; margin-right:auto;
        }
        #name
        {
            border-radius: .5em;
            background-color:lightblue;
            width:20em;
            position:relative;
            padding: 1em;
          
        }
        #email
        {
            border-radius: .5em;
            background-color:lightblue;
            width:20em;
            position:relative;
            padding: 1em;
            
        }
        #content
        {
            border-radius: .5em;
            background-color:lightblue;
            width:20em;
            position:relative;
            padding: 1em;
            
        }

        #btnReset
        {
            border-radius:.5em;
            background-color:LightBlue;
            width:4em;
            padding:1em;
            float:left;
        }
        #btnSubmit
        {
            border-radius:.5em;
            background-color:LightBlue;
            width:4em;
            padding: 1em;
            float:right;
        }
        #buttons
        {
          position:relative;
          width:22em;
        }
        #form1
        {
            padding-right: 10em;
            padding-left:10em;
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

    <div id="container">
    
        <form id="form1" runat="server">
        <div id = "name">
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="243px"></asp:TextBox>
        </div><br /><br />
        <div id = "email">
            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
            &nbsp;
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="251px"></asp:TextBox>
        </div>
        <br /><br />
        <div id = "content">
            <asp:TextBox ID="comments" runat="server" Height="208px" 
            TextMode="MultiLine" Width="312px"></asp:TextBox></div>
            <br /><br /><div id = "buttons">
            <div id = "btnReset" class="style1">
                <asp:Button ID="reset" runat="server" Text="Reset" /></div>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<div id = "btnSubmit">
                <asp:Button ID="Submit" runat="server"  Text="Submit" />
            </div>
            <br />
            <br />
            <br />
        </div>
        </form>
    </div>
</body>
</html>
