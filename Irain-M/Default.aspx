<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Irain_M.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN-Login</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
<body>
	<div id="header" style="z-index: 100">
    	<a href="#"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>&nbsp;</div>
<div id="welcomeMessage" style="z-index: 101">
    	<h1>
            Hello World Welcome!<asp:Label ID="Label1" runat="server" Style="left: -56px; position: relative;
                top: 242px" Text="Label" Visible="False" Font-Bold="False" ForeColor="#33CCFF"></asp:Label></h1>
    <p style="width: 542px">
        This site integrates your Personal data with various metainfo structures that comes
        from different personal computers. The data can be saved with various tags like
        document,video,audio,video and images.<br />
        <br />
        This can also be used as a Social network to reflect real world relationship that
        allow users to Share information.
    </p>
    	</div>
    <div id="wrapper">
    	<div id="secWrapper">
            <br />
            <br />
            <br />
            <br />
            <br />
              		<fieldset id="login" style="z-index: 102; left: 437px; position: static; top: 340px">
                    	<h4>Members login</h4>
               			<form id="Form1" runat="server" style="height: 78px" name=form1>
                        	<p class="clearfix"><label for="username">Username</label>
                                <asp:TextBox ID="usernametb" runat="server" Width="141px"></asp:TextBox></p>
                            <p class="clearfix"><label for="password">Password</label>
                                <asp:TextBox ID="passtb" TextMode="Password" runat="server" Width="142px"></asp:TextBox></p>
                            <asp:Button ID="submit" runat="server" style="position: relative; left: -87px; top: 11px;" OnClick="submit_Click" Width="81px" Height="27px"/>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtb"
                                   ErrorMessage="Enter Password" Style="left: 242px; position: relative; top: -19px"></asp:RequiredFieldValidator>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametb"
                                   ErrorMessage="Enter Username" Style="left: 245px; position: relative; top: -67px"
                                   Width="121px"></asp:RequiredFieldValidator></form>
                        <p class="member" style="position: relative; top: 7px; height: 33px">
                            <span style="font-size: 13pt">
                            <br />
                            Not a member yet? </span><a href="register.aspx"><strong>
                                <span style="font-size: 13pt; color: #33ccff">Register now!</span></strong></a></p>
                    </fieldset>
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
    </div>
    <div id="footer">
    </div>
</body>
</html>