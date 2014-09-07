<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="adminDocumentUpload.aspx.cs" Inherits="Irain_M.adminDocumentUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/images/docimage.jpg"
        Width="209px" />&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Style="left: 738px; position: absolute;
            top: 398px" />
    <asp:Button ID="btnupload" runat="server" Style="left: 800px; position: absolute; top: 452px"
        Text="Upload" OnClick="btnupload_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

</asp:Content>
