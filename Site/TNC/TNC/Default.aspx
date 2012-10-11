<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TNC.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <!--<script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>-->
    <style type="text/css">
       body { background-image:url("images/TNC-Home-Page.jpg"); }
 
        #container div
        {
             font-family: "Amaranth";
             font-weight: bold;
        }
        #waste
        {         
            position: absolute;
            left: 571px;
            width: 303px;
            top: 301px;
            font-size: 39px; 
            line-height: 38px;
            color: #6699ff;
        }
        #infra
        {
            position: absolute; 
            left: 256px; 
            top: 309px; 
            font-size: 35px;
            color: Green;
        }
        #trans
        {
            color: Navy;
            position: absolute; 
            top: 338px; 
            font-size: 36px; 
            left: 226px;
        }
        #marine
        {
         position: absolute; 
         font-size: 36px; 
         left: 257px; 
         top: 366px;
         color: #339933;
        }
        #home
        {
         position: absolute; 
         width: 40px; 
         line-height: 29px; 
         top: 461px; 
         left: 281px; 
         font-size: 33px;
         color: Green;
        }
        #bus
        {
        color: #006633;
        font-size: 33px;
        left: 219px;
        position: absolute;
        top: 485px;
        }
        #comm
        {
           position: absolute; 
           font-size: 34px; 
           top: 510px; 
           left: 209px;
           color:#003399;
            
        }
        #agri
        {
            width: 234px; 
            top: 596px; 
            position: absolute; 
            line-height: 28px; 
            font-size: 33px; 
            left: 317px;
           color: #003300;
        }
        #water
        {
           position: absolute; 
           left: 643px; 
           font-size: 43px; 
           top: 532px;
           color: #009933;
        }
        #pfd
        {
            position: absolute; 
            width: 170px; 
            line-height: 26px; 
            left: 632px; 
            top: 578px; 
            font-size: 22px;
            color: #3333cc;
        }
        #energy
        {
            font-size: 50px; 
            position: absolute; 
            top: 412px; 
            left: 667px;
            color: #cc6600;
        }
        #wind
        {
            position: absolute; 
            font-size: 34px; 
            top: 466px; 
            left: 664px;
            color: #cc6600;
        }
        
      </style>
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
<div id = "container">

<div id = "waste" >Waste Collection &nbsp;&nbsp;&nbsp;& Recycling</div>
<div id = "infra">Infrastructure</div>
<div id= "trans">Transportation</div>
<div id = "marine">Marine</div>
<div id = "home">Homes</div>
<div id = "bus">Businesses</div>
<div id = "comm"> Communities</div>
    <div id = "agri">Agriculture &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;&nbsp;Aquaculture</div>
    <div id = "water">Water</div>
    <div id = "pfd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pump, Filter &amp;&nbsp;Desalinization</div>
    <div id = "energy">Energy</div>
    <div id = "wind">Wind &amp; Hydro</div>
    </div>

</body>
</html>
