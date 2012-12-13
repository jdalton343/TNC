<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case.aspx.cs" Inherits="TNC._case" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title><link rel="stylesheet" href="style.css" type="text/css" /> <style type="text/css">     
        #form1
            {
            padding-left:3em;padding-right:5em;
            }
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
                          #more
                          {
                              position: relative; 
                              font-family: arial; 
                              <%--top: 3em; --%>
                              font-size: 16px; 
                              font-weight: bold; 
                              <%--left: 46em;--%>
                              
                          }
                          #seemore
                          {
                              position: relative; 
                              <%--top: 5em; --%>
                              font-family: arial; 
                              font-weight: bold; 
                              <%--left: 61em;--%> 
                              font-size: 12px;
                          }
               #container
               {
                   border:solid;
                   border-radius:5em;
                   border-color:#38B336;
                   background-color:lightblue;
                   padding-left:5em;
                   position:relative;
                   top:15px;
                   padding-right:5em;
                   height:52em;
                   
               }
               #title
               {
                   font-size:25px;
               }
               #authordate
               {
               }
               #maintext
               {
                   position:relative;
                   top:40px;
                   font-size:1.5em;
               }
                  .style1
                  {
                   text-align: auto;
                 }
                 #globalheader
                 {
                     left:2em;
                 }
               </style>
</head>
<body> <div id = "logo">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div><!--googleoff: all-->
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
    <div id = "container">
    <div id = "title">
    <br /><br />Blah blah blah.</div>
    <div id = "authordate" class="style1">Billy Bob Thornton<br />
        April 2, 1998</div>
    <div id = "maintext">&nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
        minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit 
        esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
        fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
        culpa qui officia deserunt mollit anim id est laborum.<br />
        &nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
        dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
        sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor 
        sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut 
        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat 
        nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
        qui officia deserunt mollit anim id est laborum.<br />
        &nbsp;&nbsp;&nbsp; </div>
    </div>
        <div id="more" >
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/casemore.aspx">READ MORE..</asp:HyperLink>
    </div>
    <div id = "seemore"><asp:HyperLink ID = "HyperLink2" runat="server" 
            NavigateUrl="~/caselist.aspx">SEE MORE CASE STUDIES</asp:HyperLink></div>
    <br />
    </form>
</body>
</html>
