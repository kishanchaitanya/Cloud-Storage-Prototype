<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminviewdatashare.aspx.cs" Inherits="Irain_M.adminviewdatashare" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IRAIN- VIEW AND DELETE SHARE DATA</title>
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
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix" style="text-align: left">
                <strong><span style="font-size: 10pt;">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <span style="font-size: 12pt; color: #3366ff">ADMIN-DELETE AND VIEW SHARE DATA<br />
                    </span></span></strong>
                    <form id="Form1" runat=server>
                    <table>
<tr><td align="center" style="width: 960px; height: 26px;">
  <asp:Button ID="btnDocView" runat="server" Text="View Document" Width="98px" OnClick="btnDocView_Click" style="border-left-color: blue; border-bottom-color: blue; border-top-style: solid; border-top-color: blue; line-height: normal; border-right-style: solid; border-left-style: solid; letter-spacing: normal; background-color: #33cc33; border-right-color: blue; border-bottom-style: solid" />
  <asp:Button ID="btnAudioView" runat="server" Text="View Audio" style="border-left-color: blue; border-bottom-color: blue; border-top-style: solid; border-top-color: blue; border-right-style: solid; border-left-style: solid; background-color: #33cc33; border-right-color: blue; border-bottom-style: solid" OnClick="btnAudioView_Click" />
  <asp:Button ID="btnVideoView" runat="server" Text="View Video" style="border-left-color: blue; border-bottom-color: blue; border-top-style: solid; border-top-color: blue; border-right-style: solid; border-left-style: solid; background-color: #33cc33; border-right-color: blue; border-bottom-style: solid" OnClick="btnVideoView_Click" />
  <asp:Button ID="btnImagesView" runat="server" Text="View Images" style="border-left-color: blue; border-bottom-color: blue; border-top-style: solid; border-top-color: blue; border-right-style: solid; border-left-style: solid; background-color: #33cc33; border-right-color: blue; border-bottom-style: solid" OnClick="btnImagesView_Click" />
    </td>
</tr>
<tr  style="width: 100%">
<td style="width: 960px; height: 21px;">
    <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" style="width: 
    80%; z-index: 100; left: 96px; position: relative; top: -7px;" CellPadding="4" Height="107px" 
      Width="836px" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowCommand="GridView1_RowCommand" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <Columns>
                    <asp:TemplateField HeaderText="SERIAL NO">
                    <ItemTemplate>
                    <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                         
            <asp:CommandField ButtonType="Button" HeaderText="DOWNLOAD" SelectText="Download" 
                ShowSelectButton="True" />
            <asp:CommandField ButtonType="Button" HeaderText="DELETE" SelectText="Delete" ShowDeleteButton="True" />
            
            
            
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    

</td>
</tr>

</table>
</form>
                    
                     <span style="font-size: 14pt;
                            line-height: 115%; font-family: 'Times New Roman','serif'"><span style="color: #000000">
                <span style="font-size: 14pt; line-height: 115%; font-family: 'Times New Roman','serif'"><span style="mso-bidi-font-weight: bold">
    <p>
                            <span style="font-size: 14pt; line-height: 115%; font-family: 'Times New Roman','serif'">
                                <span style="color: #000000">
                                    <?xml namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?><o:p></o:p></span></span>&nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                        </span></span>
            </div>
        </div>
    </div>
    <div id="footer">
        
    </div>
</body>
</html>
