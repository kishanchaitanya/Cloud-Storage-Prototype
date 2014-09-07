<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="Irain_M.adminprofile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Admin Profile</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="home.aspx"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li><a href="adminhome.aspx">Home</a></li>
        	          
            <li><a href="Default.aspx">Logout</a></li>            
        </ul>
    </div>
<div id="welcomeMessage">
   	<h1>
           Welcome
           <asp:Label ID="Label1" runat="server" ForeColor="#FF9900" Text="admin"></asp:Label>
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
            	<div id="mainCol" class="clearfix" style="width: 980px; height: 22%">
                        &nbsp;
                     &nbsp; &nbsp; &nbsp;
                    &nbsp;
                    &nbsp;
                        &nbsp;&nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; <span style="font-size: 11pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                        <div style="left: 139px; width: 147px; position: relative; top: 18px; height: 26px">
                            <span style="color: #3366ff">PROFILE DETAILS</span></div>
                        <span style="color: #6699ff"></span><br />
                        <br />
                    </strong></span>
                    <br />
                    <form id="Form1" runat="server">
                    <table style="left: 41px; width: 844px; position: relative; top: -27px; height: 402px">
                        <tr>
                            <td style="width: 125px; text-align: right">
                                <span style="font-size: 11pt"><strong>Username</strong></span></td>
                            <td style="width: 107px">
                                <asp:TextBox ID="usernametb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-weight: bold; font-size: 11pt; color: #002337">
                            <td style="width: 125px; height: 23px; text-align: right">
                                <span style="color: #33394d">Password</span></td>
                            <td style="width: 107px; color: #33394d; height: 23px">
                                <asp:TextBox ID="passtb" runat="server" TextMode="Password"></asp:TextBox><span style="color: #002337">&nbsp;&nbsp;
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; text-align: right">
                                <span style="font-size: 11pt"><strong>Real Name</strong></span></td>
                            <td style="width: 107px">
                                <asp:TextBox ID="realnametb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; text-align: right">
                                <strong><span style="font-size: 11pt">E-Mail ID</span></strong></td>
                            <td style="width: 107px">
                                <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; height: 38px; text-align: right">
                                <strong><span style="font-size: 11pt">Mobile Number</span></strong></td>
                            <td style="width: 107px; height: 38px">
                                <asp:TextBox ID="mobtb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; text-align: right; height: 29px;">
                                <strong><span style="font-size: 11pt">DOB</span></strong></td>
                            <td style="width: 107px; height: 29px;">
                                <asp:TextBox ID="dobtb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; text-align: right">
                                <strong><span style="font-size: 11pt">State</span></strong></td>
                            <td style="width: 107px">
                                <asp:TextBox ID="statetb" runat="server"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; text-align: right">
                                <strong><span style="font-size: 11pt">Country</span></strong></td>
                            <td style="width: 107px">
                                <asp:TextBox ID="countrytb" runat="server"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 125px; height: 48px; text-align: right">
                            </td>
                            <td style="width: 107px; height: 48px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 125px; height: 38px; text-align: right">
                                <asp:Button ID="viewbtn" runat="server" Height="29px" Text="View Details" 
                                    Width="91px" onclick="viewbtn_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="width: 107px; height: 38px">
                                &nbsp;<a href="Default.aspx"></a>
                                &nbsp;&nbsp;
                                <asp:Button ID="deletebtn" runat="server" Height="27px" Text="Delete User" 
                                    Width="91px" onclick="deletebtn_Click" />
                            </td>
                        </tr>
                    </table>
                       </form>
                    <br />
                    <br />
                  
                    <br />
                    

                </div>
                    
            </div>
        </div>
    </div>
    <div id="footer">
        <p>&nbsp;
            </p>
    </div>
    <p>
        &nbsp;</p>
    <p>
                                &nbsp;</p>
                               
</body>
</html>