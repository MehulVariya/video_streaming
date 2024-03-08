<%@ Page Language="VB" MasterPageFile="~/ClientPage.master" AutoEventWireup="false" CodeFile="UserHome.aspx.vb" Inherits="UserHome" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="1">
 <tr><th>Id</th>
     <th>Title</th>
     <th>Time</th>
     <th>Video</th>
     <th>Type</th></tr>
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" DataSourceID="SqlDataSource1">
<ItemTemplate>
   <tr><td width="300" align=center><asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' /></td>
       <td width="300" align=center><asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /></td>
       <td width="300" align=center><asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' /></td>
       <td align=center><video width="300" height="300" controls="controls">
           <source src="<%# Eval("path") %>" type="video/mp4"></source></video></td>
       <td width="300" align=center><asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' /></td>
       <td width="300" align=center><asp:linkbutton ID="Linkbutton1" commandname="Play" runat="server" text="Play"  CommandArgument='<%# Eval("type") %>' /></td></tr>
</ItemTemplate>
</asp:Repeater>
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_video]"></asp:SqlDataSource>
        
</asp:Content>


