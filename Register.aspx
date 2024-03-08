<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <style type="text/css">

        .style1
        {
            margin-top:10%;
            margin-left:35%;
            height: 418px;
            width: 517px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td  align="left">
                 <asp:Label ID="L4"  CssClass="L4" runat="server" Font-Size="20pt" Text="Register" 
                        Font-Bold="True" ForeColor="#3399FF"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="style8" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  align="left">
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                </td>
                <td  align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtUser" runat="server" Height="36px" Width="326px"></asp:TextBox>
                </td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="txtUser" 
                        ErrorMessage="Username required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  align="left">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                </td>
                <td  align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 2px" Width="327px" 
                        Height="36px"></asp:TextBox>
                    <br />
                </td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="r2" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Email required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter Right Format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
       
            <tr>
                <td class="style5" align="left">
                    &nbsp;<asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style8" align="left">
                    &nbsp;</td>
            </tr>
       
            <tr>
                <td class="style3">
                    <asp:TextBox ID="txtPass" runat="server" style="margin-left: 0px" Width="327px" 
                        Height="36px"></asp:TextBox></td>
                <td class="style8" align="left">
                    <asp:RequiredFieldValidator ID="r3" runat="server" ControlToValidate="txtPass" 
                        ErrorMessage="Password required"></asp:RequiredFieldValidator>
                </td>
            </tr>
       
            <tr>
                <td class="style6" align="left">
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="style8" align="left">
                    &nbsp;</td>
            </tr>
       
            <tr>
                <td class="style3">
                    <asp:TextBox ID="txtPass2" runat="server" style="margin-left: 2px" Width="327px" 
                        Height="36px"></asp:TextBox></td>
                <td class="style8" align="left">
                    <asp:RequiredFieldValidator ID="r4" runat="server" ControlToValidate="txtPass2" 
                        ErrorMessage="Confirm Password required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPass" ControlToValidate="txtPass2" 
                        ErrorMessage="Password must be same"></asp:CompareValidator>
                </td>
            </tr>
       
            <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="User Type"></asp:Label>
                </td>
                <td class="style8" align="left">
                    &nbsp;</td>
            </tr>
       
            <tr>
                <td class="style3">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:RadioButton ID="optUser" runat="server" 
    Text="User" />
                        <asp:RadioButton ID="optAdmin" runat="server" Text="Admin" />
                    </asp:Panel>
                </td>
                <td class="style8" align="left">
                    &nbsp;</td>
            </tr>
       
            <tr>
                <td class="style3">
                    <br />
                    <asp:Button ID="BtnRegister" runat="server" BackColor="#3399FF" 
                        ForeColor="White" Height="36px" Text="Register" Width="337px" />
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
       
            </table>
    </div>
    </form>
</body>
</html>
