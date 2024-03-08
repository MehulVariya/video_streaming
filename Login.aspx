<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        
      
         .style1
        {
            margin-top:20%;
            margin-left:35%;
        }
        	
        .style2
        {
            height: 42px;
        }
        #body
        {
        	 color:black;
             background-repeat: no-repeat;             
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="style1">
            <tr>
                <td class="style2">
                 <asp:Label ID="L4"  CssClass="L4" runat="server" Font-Size="20pt" Text="Login" 
                        ForeColor="#3399FF" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                </td>
     
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                </td>
              
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="txtUser" runat="server" Height="36px" Width="329px"></asp:TextBox>
                    <br />
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUser" ErrorMessage="Username required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
             
            </tr>
            <tr>
                <td class="style4">
                    <asp:TextBox ID="txtPass" runat="server" style="margin-left: 2px" Width="327px" 
                        Height="36px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPass" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                </td>
            </tr>
       
            <tr>
                <td class="style3">
                    <asp:Button ID="btnLogin" runat="server" Height="38px" Text="Login" 
                        Width="331px" BackColor="#6699FF" ForeColor="White" />
                </td>
              
            </tr>
       
            <tr>
                <td class="style2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Do not have account ?"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" 
                        NavigateUrl="~/Register.aspx" Font-Bold="True">Register</asp:HyperLink>
                </td>
            </tr>
       
            </table>
    </div>
    </form>
</body>
</html>
