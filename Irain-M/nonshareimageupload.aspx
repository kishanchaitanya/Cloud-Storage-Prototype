<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="nonshareimageupload.aspx.cs" Inherits="Irain_M.nonshareimageupload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/images/phoimg.jpg"
        Width="209px" />&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Style="left: 738px; position: absolute;
            top: 398px" />
    <asp:Button ID="btnUpload" runat="server" Style="left: 800px; position: absolute; top: 452px"
        Text="Upload" OnClick="btnUpload_Click" />
</asp:Content>
