<%@ Page Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="AdminHome" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 60%;
        height: 289px;
    }
    .style6
    {
        width: 70px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Video Streaming By " ></asp:Label>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
&nbsp;<table class="style5">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Video ID"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtId" runat="server" Width="296px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtId" ErrorMessage="Field the blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Video Title"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtTitle" runat="server" Width="294px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtTitle" ErrorMessage="Field the blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Video Time"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtTime" runat="server" Width="294px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtTime" ErrorMessage="Field the blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Video"></asp:Label>
            </td>
            <td colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="File Choose Reqired"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Premium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="Premium">Yes</asp:ListItem>
                    <asp:ListItem Value="Free">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" />
            </td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" />
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </table>
</asp:Content>

