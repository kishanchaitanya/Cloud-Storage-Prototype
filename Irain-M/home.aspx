<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Irain_M.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Home</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="home.aspx"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li class="current"><a href="home.aspx">Home</a></li>
        	<li><a href="about.aspx">About us</a></li>
            <li><a href="contact.aspx">Contact Us</a></li>          
            <li><a href="Default.aspx">Logout</a></li>            
        </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
<div id="welcomeMessage">
   	<h1>
           Welcome
           <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="#FF9900"></asp:Label>
           </h1>
    <p id="P1" style="width: 580px; position: absolute">
        This site integrates your Personal data with various metainfo structures that comes
        from different personal computers. The data can be saved with various tags like
        document,video,audio,video and images.<br />
    </p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
            	<div id="mainCol" class="clearfix" style="width: 950px">
                	<div id="services" style="left: 132px; top: 1px">
                    <h3 style="z-index: 100; left: 20px; top: 10px;">
                        <strong>
                        Select the Service</strong></h3>
                    <ul>
                     <li style="z-index: 102; left: 211px; position: absolute; top: 43px">
                    <h4><a href="nonshare.aspx"><span style="font-size: 16px">Non-Share</span></a></h4>
                    <p>
                        To store Personal data of a user and to enhance security to their information.This
                        is a restricted section. All of your information is totally secured.
                    </p>
                    </li>
                    <li style="z-index: 103; left: 2px; position: absolute; top: 42px; height: 1px;">
                    <h4><a href ="profile.aspx"><span style="font-size: 16px">Profile</span></a></h4>
                    <p>
                        A place where your profile information is stored and you could come back any time
                        to have a glance at the profile information and modify it.</p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;
                    </li>
                        &nbsp;
                     <li style="z-index: 101; left: 426px; position: absolute; top: 44px">
                    <h4><a href="share.aspx"><span style="font-size: 16px">Share</span></a></h4>
                    <p>
                        To Share information to all the users. All the information here is onstage to others.This
                        is an unrestricted section.All can access this section.</p>
                    </li>
                    </ul>
                    </div>
                    <h3 id="why" style="left: -6px; top: 1px">Why &nbsp;IRAIN Storage ?</h3>
                    <br />
                    <ul id="maincon" style="width: 903px">
                    <li class="clearfix" style="width: 888px">
                    <img src="images/image1.jpg" alt="image1" />
                    <h2>Services you could depend on</h2>
                    <p>&nbsp;
                        </p>
                        <p>
                            Users can use Non-Share mode to store data as document, audio, video &nbsp;and imges.
                            Share mode to share information as document, audio, video and images. Profile details
                            can be viewed and updated whenever
                            needed.</p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                    </li>
                    &nbsp;
                    <li class="clearfix" style="width: 885px">
                    <img src="images/image3.jpg" alt="image1" />
                    <h2>Support you can trust</h2>
                    <p>&nbsp;
                        </p>
                        <p>
                            This site provides 24x7 Uptime and it ensures that you can depend on it always.
                            Your feedback and needs about the site can be sent through Contact section.</p>
                    </li>
                    <li class="clearfix last" style="width: 884px">
                    <img src="images/image4.jpg" alt="image1" />
                    <h2>Professional team at you help</h2>
                    <p>&nbsp;
                        </p>
                        <p>
                            The site administrators are always there to help all the users. You can use the
                            Contact us Section to contact them.</p>
                    </li>
                    </ul>

                </div>
                    &nbsp;&nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
            </div>
        </div>
    </div>
    <div id="footer">
        <p>&nbsp;
            </p>
    </div>
</body>
</html>