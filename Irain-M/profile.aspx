<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Irain_M.profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Profile</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="home.aspx"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li><a href="home.aspx">Home</a></li>
        	<li><a href="about.aspx">About us</a></li>
            <li><a href="contact.aspx">Contact Us</a></li>           
            <li><a href="Default.aspx">Logout</a></li>            
        </ul>
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
            	<div id="mainCol" class="clearfix" style="width: 980px; height: 22%">
                	<div id="services" style="left: 132px; top: 1px">
                    <h3 style="z-index: 100; left: 20px; top: 10px;">
                        Select the Service</h3>
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
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
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
                    &nbsp;
                    &nbsp;
                    &nbsp;
                        &nbsp;&nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; <span style="font-size: 11pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                        <div style="left: 139px; width: 84px; position: relative; top: 18px; height: 26px">
                            <span style="color: #3366ff">PROFILE</span></div>
                        <span style="color: #6699ff"></span><br />
                        <br />
                    </strong></span>
                    <br />
                    <form id="Form1" runat="server">
                        <table style="left: 73px; width: 844px; position: relative; top: -29px; height: 402px">
                            <tr>
                                <td style="width: 125px; text-align: right">
                                    <span style="font-size: 11pt"><strong>Username</strong></span></td>
                                <td style="width: 107px">
                                    <asp:TextBox ID="usernametb" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 107px">
                                    </td>
                            </tr>
                            <tr style="font-weight: bold; font-size: 11pt; color: #002337">
                                <td style="width: 125px; height: 23px; text-align: right">
                                    <span style="color: #33394d">Password</span></td>
                                <td style="width: 107px; color: #33394d; height: 23px">
                                    <asp:TextBox ID="passtb" runat="server" TextMode="Password"></asp:TextBox><span style="color: #002337">
                                    </span>
                                </td>
                                <td style="width: 107px; color: #002337; height: 23px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtb"
                                        ErrorMessage="Enter Password" Font-Bold="False" Width="82px" Font-Size="0.65em"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="font-weight: bold; font-size: 11pt; color: #002337">
                                <td style="width: 125px; text-align: right">
                                    <span style="color: #33394d">Real Name</span></td>
                                <td style="width: 107px">
                                    <asp:TextBox ID="realnametb" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 107px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="realnametb"
                                        ErrorMessage="Enter your Real name" Font-Bold="False" Width="117px" Font-Size="0.65em"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; text-align: right">
                                    <strong><span style="font-size: 11pt">E-Mail ID</span></strong></td>
                                <td style="width: 107px">
                                    <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 107px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="emailtb"
                                        ErrorMessage="Enter E-Mail Id"></asp:RequiredFieldValidator>&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="emailtb" ErrorMessage="Invalid E-Mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; height: 25px; text-align: right">
                                    <strong><span style="font-size: 11pt">Mobile Number</span></strong></td>
                                <td style="width: 107px; height: 25px">
                                    <asp:TextBox ID="mobtb" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 107px; height: 25px">
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="mobtb"
                                        ErrorMessage="Enter Mob No"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; text-align: right">
                                    <strong><span style="font-size: 11pt">DOB</span></strong></td>
                                <td style="width: 107px">
                                    <asp:TextBox ID="dobtb" runat="server" onkeydown="clearInput(this);"></asp:TextBox>
                                </td>
                                <td style="width: 107px">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="left: -93px; position: relative;
                                        top: 2px" Text="mm/dd/yy"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dobtb"
                                        ErrorMessage="Enter DOB" Style="left: -47px; position: relative; top: 0px"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; text-align: right">
                                    <strong><span style="font-size: 11pt">State</span></strong></td>
                                <td style="width: 107px">
                                    <asp:TextBox ID="statetb" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 107px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="statetb"
                                        ErrorMessage="Enter State"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; height: 27px; text-align: right">
                                    <strong><span style="font-size: 11pt">Country</span></strong></td>
                                <td style="width: 107px; height: 27px">
                                    <asp:TextBox ID="countrytb" runat="server" Style="left: 381px; position: static;
                                        top: 265px"></asp:TextBox>&nbsp;
                                </td>
                                <td style="width: 107px; height: 27px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="countrytb"
                                        ErrorMessage="Enter Country"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 125px; height: 26px; text-align: right">
                                </td>
                                <td style="width: 107px; height: 26px">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobtb"
                                        ErrorMessage="Mob No must be 10 digits" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
                                <td style="width: 107px; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 125px; height: 26px; text-align: right">
                                </td>
                                <td style="width: 107px; height: 26px">
                                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="dobtb"
                                        ErrorMessage="Date Not valid" MaximumValue="03/01/2011" MinimumValue="01/01/1900"
                                        Type="Date"></asp:RangeValidator></td>
                                <td style="width: 107px; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 125px; height: 38px; text-align: right">
                                    <asp:Button ID="viewbtn" runat="server" CausesValidation="False" Height="31px" 
                                        Text="View Details" Width="81px" OnClick="viewbtn_Click" />&nbsp;</td>
                                <td style="width: 107px; height: 38px">
                                    <a href="Default.aspx"></a>&nbsp; &nbsp;
                                    <asp:Button ID="editbtn" runat="server" Height="31px" 
                                        Text="Edit Details" Width="81px" style="left: 37px; position: relative; top: 0px" CausesValidation="False" OnClick="editbtn_Click" /></td>
                                <td style="width: 107px; height: 38px">
                                    <asp:Button ID="savebtn" runat="server" Height="31px" 
                                        Style="left: -90px; position: relative; top: 1px" Text="Save" Width="81px" OnClick="savebtn_Click" /></td>
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
</body>
</html>