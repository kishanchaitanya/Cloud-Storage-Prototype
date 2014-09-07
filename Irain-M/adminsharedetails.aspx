<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsharedetails.aspx.cs" Inherits="Irain_M.adminsharedetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN- Admin Share Details</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<form id="form1" runat="server">
	<div id="header">
    	<a href="home.aspx"><img src="images/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li><a href="adminhome.aspx">Home</a></li>            
            
            <li><a href="Default.aspx">Logout</a></li>            
        </ul>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix" style="text-align: left">
                <strong><span style="font-size: 10pt;">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <span style="font-size: 12pt; color: #3366ff">SHARE DATA DETAILS</span></span></strong><br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Height="191px" Width="960px">
                    <Columns>
                        <asp:TemplateField HeaderText="Serial No">
                        <ItemTemplate>   <%# ((GridViewRow)Container).RowIndex + 1%>
                                </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="filename" HeaderText="filename" 
                            SortExpression="filename" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="category" HeaderText="category" 
                            SortExpression="category" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [sharedetails]"></asp:SqlDataSource>
                <span style="font-size: 14pt;
                            line-height: 115%; font-family: 'Times New Roman','serif'"><span style="color: #000000">
            </div>
        </div>
    </div>
    <div id="footer">
        
    </div>
    </form>
</body>
</html>
