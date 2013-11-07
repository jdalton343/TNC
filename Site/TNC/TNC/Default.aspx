<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TNC.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="style.css" type="text/css" />
    <title>ToolTips Example</title>
    <style type="text/css">
        body
        {
            margin: 0;
        }
        #logo
        {
            background: url("images/tnc-logo.jpg") no-repeat scroll 0 0 #EFFDEE;
            margin: 0;
            padding: 0;
            position: relative;
        }
        .tooltip
        {
            cursor: help;
            text-decoration: none;
        }
        .tooltip span
        {
            margin-left: -999em;
            position: absolute;
        }
        .tooltip:hover span
        {
            border-radius: 0.5em 0.5em 0.5em 0.5em;
            box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
            font-family: Calibri,Tahoma,Geneva,sans-serif;
            left: 5px;
            margin-left: 0;
            position: absolute;
            top: -68px;
            width: 250px;
            z-index: 99;
        }
        .tooltip a
        {
            text-decoration:none;
        }
        .tooltip:hover img
        {
            border: 0 none;
            float: left;
            margin: -10px 0 0 -55px;
            position: absolute;
        }
        .tooltip:hover em
        {
            display: block;
            font-family: Candara,Tahoma,Geneva,sans-serif;
            font-size: 1.2em;
            font-weight: bold;
            padding: 0.2em 0 0.6em;
        }
        .classic
        {
            padding: 0.8em 1em;
        }
        .custom
        {
            padding: 0.5em 0.8em 0.8em 2em;
        }
        * html a:hover
        {
            background: none repeat scroll 0 0 transparent;
        }
        .tooltip span
        {
            margin-left: -999em;
            position: absolute;
        }
        .classic
        {
            background: none repeat scroll 0 0 #B4D6C8;
            border: 1px solid #69A9CD;
            color: Black;
            font-size: 16px;
        }
        .tooltip span p
        {
            line-height: 16px;
        }
        #container
        {
            background-image: url("images/TNC-Home-Pagbackground.jpg");
            background-repeat: no-repeat;
            font-family: "Amaranth";
            font-weight: bold;
            width: auto;
        }
        #waste
        {
            color: #6699FF;
            font-size: 39px;
            left: 218px;
            line-height: 38px;
            position: absolute;
            top: 364px;
            width: 272px;
        }
        #waste a:link
        {
            color: #6699FF;
        }
        #waste a:visited
        {
            color: #6699FF;
        }
        #infra
        {
            color: Green;
            font-size: 35px;
            position: absolute;
        }
        #trans a:link
        {
            color: navy;
        }
        #trans a:visited
        {
            color: navy;
        }
        #trans
        {
            color: Navy;
            font-size: 36px;
            left: -53px;
            position: absolute;
            top: 30px;
        }
        #marine
        {
            color: #339933;
            font-size: 36px;
            left: 80px;
            position: absolute;
            top: 69px;
        }
        #home
        {
            color: Green;
            font-size: 33px;
            left: 281px;
            line-height: 29px;
            position: absolute;
            top: 535px;
            width: 40px;
        }
        #bus
        {
            color: #006633;
            font-size: 33px;
            left: 220px;
            position: absolute;
            top: 559px;
        }
        #bus a:link
        {
            color: #006633;
        }
        #bus a:visited
        {
            color: #006633;
        }
        #comm
        {
            color: #003399;
            font-size: 34px;
            left: 206px;
            position: absolute;
            top: 590px;
        }
        #agri
        {
            color: #003300;
            font-size: 33px;
            left: 678px;
            line-height: 28px;
            position: absolute;
            top: 450px;
            width: 234px;
        }
        #agri a:link
        {
            color: #003300;
        }
        #agri a:visited
        {
            color: #003300;
        }
        #pfd
        {
            color: #3333CC;
            font-size: 22px;
            left: 632px;
            line-height: 26px;
            position: absolute;
            top: 671px;
            width: 170px;
        }
        #energy
        {
            color: #CC6600;
            font-size: 50px;
            position: absolute;
        }
        #energy a:link
        {
            color: #CC6600;
        }
        #energy a:visited
        {
            color: #CC6600;
        }
        #wind
        {
            color: #CC6600;
            font-size: 34px;
            left: 40px;
            position: absolute;
            top: 52px;
            width: 214px;
        }
        #container2
        {
            font-family: "Amaranth";
            font-size: 20px;
            line-height: 35px;
            margin-left: auto;
            margin-right: auto;
            position: relative;
            top: 100px;
            width: 400px;
        }
        #ewh
        {
            color: #FF6600;
            left: 502px;
            position: absolute;
            top: 277px;
        }
        #itm
        {
            left: 246px;
            position: absolute;
            top: 521px;
        }
        #hbc
        {
            left: 365px;
            position: absolute;
            top: 63px;
        }
        #gn-home
        {
            top: 100px;
        }
    </style>
</head>
<body>
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
            <div class="tooltip">
                Waste to Energy<span class="classic">Waste and Water Recycle Systems  </span>
            </div>
        </div>
        <div id="itm">
            <div id="infra">
                Containers</div>
            <div id="trans">
                <div class="tooltip">
                    Transportation<span class="classic"><p>Charter and Ferry Passenger Transport Vessels</p>
<p>Mobile Clinic and Hospital Ships </p> 
<p>Workboats and Barges</p>
<p>Marinas & Ports</p>
<p>Patrol Boats</p>
<p>Seawalls</p>
<p>Storage Tanks</p>
<p>20'-40' Containers - Shipping and Storage</p>  </span>
                </div>
            </div>
            <div id="marine">
                Marine</div>
        </div>
        <div id="hbc">
            <div id="home">
                Homes</div>
            <div id="bus">
                <div class="tooltip">
                    Businesses<span class="classic"><p>Housing & Commercial Bldgs.</p>

<p>Community Infrastructure</p>
<p>Remote Sheltering and Resorts</p>
<p>Garages, Carports, Storage Sheds, and Decks</p> 
<p>20'-40' Containers - Shipping and Storage </p> </span>
                </div>
            </div>
            <div id="comm">
                Communities</div>
        </div>
        <div id="agri">
            <div class="tooltip">
                Agriculture &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;&nbsp;Aquaculture<span class="classic"><p>Agriculture - Food Towers and Livestock Sheltering</p>

<p>Irrigation Systems</p>
<p>Food and Water Storage Containers</p>
<p>Aquaculture - Upwells and Repopulation</p>
<p>20'-40' Containers - Shipping and Storage</p>  </span>
            </div>
        </div>
        <div id="ewh">
            <div id="energy">
                <div class="tooltip">
                    Energy<span class="classic"><p>
                        <a href="http://www.revairwind.com">Cylindrical Axis Wind Turbines</a></p>
                        <p>
                            Hydro Power Turbines</p>
                        <p>
                            Pipelines</p>
                        <p>
                            Fuel Tanks</p>
                        <p>
                            20'-40' Containers - Shipping and Control Centers</p>
                    </span>
                </div>
            </div>
            <div id="wind">
                Wind &amp; Hydro</div>
        </div>
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
</body>
</html>
