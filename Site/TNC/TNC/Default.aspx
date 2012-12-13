<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TNC.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <!--<script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>-->
    <style type="text/css">
        body
        {
            margin:0;
        }
        
        #logo
        {
            background: url("images/tnc-logo.jpg");
            background-color:#EFFDEE;
            background-repeat: no-repeat;
            padding:0px;
            margin:0px;
            position:relative;
        }
        #container
        {
            background-image: url("images/TNC-Home-Pagbackground.jpg");
            background-repeat: no-repeat;
            
            width: auto;
            font-family: "Amaranth";
            font-weight: bold;
        }

        #waste
        {
            position: absolute;
            left: 577px;
            width: 303px;
            top: 376px;
            font-size: 39px;
            line-height: 38px;
            color: #6699ff;
        }
        #infra
        {
            position: absolute;
            left: 273px;
            top: 384px;
            font-size: 35px;
            color: Green;
        }
        #trans
        {
            color: Navy;
            position: absolute;
            top: 414px;
            font-size: 36px;
            left: 239px;
        }
        #marine
        {
            position: absolute;
            font-size: 36px;
            left: 265px;
            top: 450px;
            color: #339933;
        }
        #home
        {
            position: absolute;
            width: 40px;
            line-height: 29px;
            top: 535px;
            left: 281px;
            font-size: 33px;
            color: Green;
        }
        #bus
        {
            color: #006633;
            font-size: 33px;
            left: 220px;
            position: absolute;
            top: 559px;
        }
        #comm
        {
            position: absolute;
            font-size: 34px;
            top: 590px;
            left: 206px;
            color: #003399;
        }
        #agri
        {
            width: 234px;
            top: 660px;
            position: absolute;
            line-height: 28px;
            font-size: 33px;
            left: 285px;
            color: #003300;
        }
        #water
        {
            position: absolute;
            left: 643px;
            font-size: 43px;
            top: 623px;
            color: #009933;
        }
        #pfd
        {
            position: absolute;
            width: 170px;
            line-height: 26px;
            left: 632px;
            top: 671px;
            font-size: 22px;
            color: #3333cc;
        }
        #energy
        {
            font-size: 50px;
            position: absolute;
            top: 486px;
            left: 678px;
            color: #cc6600;
        }
        #wind
        {
            position: absolute;
            font-size: 34px;
            top: 539px;
            left: 670px;
            color: #cc6600;
        } 
        #container2
        {
            font-family: "Amaranth";
            margin-left:auto;
            margin-right:auto;
            width:400px;
            top: 100px;
            position: relative;
            font-size: 20px;
            line-height: 35px;
        }
        #ewh
        {
            color: #ff6600;
        }
        #itm
        {
        }
        #aa
        {
        }
        #wcr
        {
        }
        #wpfd
        {
        }
        #hbc
        {
        }
        #gn-home
        {
           top: 100px;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="logo">
    <br />
    <br />
    <br />
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
        <div id="waste">
            Waste Collection &nbsp;&nbsp;&nbsp;& Recycling</div>
        <div id="infra">
            Infrastructure</div>
        <div id="trans">
            Transportation</div>
        <div id="marine">
            Marine</div>
        <div id="home">
            Homes</div>
        <div id="bus">
            Businesses</div>
        <div id="comm">
            Communities</div>
        <div id="agri">
            Agriculture &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;&nbsp;Aquaculture</div>
        <div id="water">
            Water</div>
        <div id="pfd">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pump, Filter &amp;&nbsp;Desalinization</div>
        <div id="energy">
            Energy</div>
        <div id="wind">
            Wind &amp; Hydro</div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <div id="container2">
        <div id="ewh">
            Energy - Wind - Hydro</div>
        <div id="itm">
            Infrastructure Tansportation Marine</div>
        <div id="aa">
            Agriculture & Aquaculture</div>
        <div id="wcr">
            Waste Collection & Recycling</div>
        <div id="wpfd">
            Water &nbsp; Pump, Filter & Desalination</div>
        <div id="hbc">
            Homes &nbsp; Businesses &nbsp Communities</div>
        <br />
    </div>
    </form>
</body>
</html>
