<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Irain_M.adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Admin Home</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="home.aspx"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li class="current"><a href="adminhome.aspx">Home</a></li>
        	 
            <li><a href="Default.aspx">Logout</a></li>            
        </ul>
    </div>
<div id="welcomeMessage">
   	<h1>
           Welcome
           <asp:Label ID="Label1" runat="server" ForeColor="#FF9900" Text="Label"></asp:Label>
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
                    <h4><a href="adminshare.aspx"><span style="font-size: 16px">Share Data's</span></a></h4>
                    <p>
                        To Share information to all the users. All the information here is onstage to others.Admin
                        can delete the share data's shared by others.</p>
                    </li>
                    <li style="z-index: 103; left: 2px; position: absolute; top: 42px; height: 1px;">
                    <h4><a href ="adminprofile.aspx"><span style="font-size: 16px">Profiles</span></a></h4>
                    <p>
                        A place where all profile information is stored and admin can see all profile details
                    &nbsp;
                    &nbsp;
                        &nbsp;
                        and delete the user from this site.</p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </li>
                        &nbsp;
                     <li style="z-index: 101; left: 426px; position: absolute; top: 44px">
                    <h4><a href="adminsharedetails.aspx"><span style="font-size: 16px">Share Details</span></a></h4>
                    <p>
                        To view the username of the user who ever shared the data's with time and category.</p>
                    </li>
                    </ul>
                    </div>
                    <br />
                    &nbsp;

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