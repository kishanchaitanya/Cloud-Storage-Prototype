<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Irain_M.register" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Registration</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	  
</head>
<body>
	<div id="header" style="z-index: 100">
    	<a href="#"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>&nbsp;</div>
<div id="welcomeMessage" style="z-index: 101">
    	<h1>
            Hello World Welcome!</h1>
    <p style="width: 542px">
        This site integrates your Personal data with various metainfo structures that comes
        from different personal computers. The data can be saved with various tags like
        document, image and videos.<br />
        <br />
        This can also be used as a Social network to reflect real world relationship that
        allow users to Share information.
    </p>
    	</div>
    <div id="wrapper" style="color: #33394d">
    	<div id="secWrapper">
            <div style="left: 371px; width: 100px; position: absolute; top: 351px; height: 24px">
                <span style="font-size: 11pt; color: #3366ff"><strong>REGISTER</strong></span></div>
            <br />
            <br />
            <br />
            <br />
            <div style="text-align: center">
            <form id="Form1" runat="server">
                <table style="left: -33px; width: 844px; position: relative; top: -25px; height: 402px">
                    <tr>
                        <td style="width: 125px; text-align: right">
                            <span style="font-size: 11pt"><strong>Username</strong></span></td>
                        <td style="width: 107px">
                            <asp:TextBox ID="usernametb" runat="server"></asp:TextBox>
                            </td>
                        <td style="width: 107px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametb"
                                ErrorMessage="Enter Username"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right; height: 23px;">
                            <span style="font-size: 11pt"><strong>Password</strong></span></td>
                        <td style="width: 107px; height: 23px;">
                            <asp:TextBox ID="passtb" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        <td style="width: 107px; height: 23px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtb"
                                ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            <span style="font-size: 11pt"><strong>ConfirmPassword</strong></span></td>
                        <td style="width: 107px">
                            <asp:TextBox ID="cpasstb" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        <td style="width: 107px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpasstb"
                                ErrorMessage="Enter confirm password " Width="119px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            <span style="font-size: 11pt"><strong>Real Name</strong></span></td>
                        <td style="width: 107px">
                            <asp:TextBox ID="realnametb" runat="server"></asp:TextBox>
                            </td>
                        <td style="width: 107px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="realnametb"
                                ErrorMessage="Enter your Real name"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            <strong><span style="font-size: 11pt">E-Mail ID</span></strong></td>
                        <td style="width: 107px">
                            <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>
                            </td>
                        <td style="width: 107px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="emailtb"
                                ErrorMessage="Enter E-Mail Id" style="left: -34px; top: 0px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right; height: 25px;">
                            <strong><span style="font-size: 11pt">Mobile Number</span></strong></td>
                        <td style="width: 107px; height: 25px;">
                            <asp:TextBox ID="mobtb" runat="server"></asp:TextBox>
                            </td>
                        <td style="width: 107px; height: 25px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="mobtb"
                                ErrorMessage="Enter Mob No" style="left: 53px; position: relative; top: 0px"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobtb"
                                ErrorMessage="Mob No must be 10 digits" ValidationExpression="\d{10}" Width="128px"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            <strong><span style="font-size: 11pt">DOB</span></strong></td>
                        <td style="width: 107px">
                            <asp:TextBox ID="dobtb" onkeydown="clearInput(this);" runat="server" ></asp:TextBox>
                            </td>
                        <td style="width: 107px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="left: -96px; position: relative;
                                top: 0px" Text="mm/dd/yy"></asp:Label>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="dobtb"
                                ErrorMessage="Enter DOB" style="left: -7px; position: relative; top: 1px"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="dobtb"
                                ErrorMessage="Date Not valid" MaximumValue="03/01/2011" MinimumValue="01/01/1900"
                                Type="Date"></asp:RangeValidator></td>
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
                        <td style="width: 125px; text-align: right; height: 27px;">
                            <strong><span style="font-size: 11pt">Country</span></strong></td>
                        <td style="width: 107px; height: 27px;">
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
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtb"
                                ControlToValidate="cpasstb" ErrorMessage="Password and Confirm Password does not match"
                                Font-Bold="True" Width="247px"></asp:CompareValidator></td>
                        <td style="width: 107px; height: 26px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right; height: 26px;">
                        </td>
                        <td style="width: 107px; height: 26px;">
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="emailtb" ErrorMessage="Invalid E-Mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                        <td style="width: 107px; height: 26px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 38px; text-align: right">
                            <asp:Button ID="backbtn" runat="server" CausesValidation="False" Height="31px" Text="Back"
                                Width="81px" OnClick="backbtn_Click" />&nbsp;</td>
                        <td style="width: 107px; height: 38px">
                            <a href="Default.aspx"></a>
                            <asp:Button ID="registerbtn" runat="server" Height="31px" OnClick="registerbtn_Click"
                                Text="Register" Width="81px" />
                            &nbsp;&nbsp;
                        </td>
                        <td style="width: 107px; height: 38px">
                            <asp:Button ID="clearbtn" runat="server" CausesValidation="False" Height="31px" Style="left: -71px;
                                position: relative; top: 2px" Text="Clear" Width="81px" OnClick="clearbtn_Click" /></td>
                    </tr>
                    </table>
                    </form>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            
        </div>
    </body>
</html>