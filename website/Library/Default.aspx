<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="CSSCLASS.css" type="text/css" />
    <style type="text/css">
        #form1
        {
            height: 516px;
            background-color:LightCyan;
        }
        .style1
        {
            font-family: "ROAD MOVIE";
            font-size: xx-large;
            color:DarkMagenta;
            display:inline-block;
        }
    </style>
</head>
<body style="height: 607px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p style="margin-left: 200px">
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LIBRARY SYSTEM</span></p>
    <p style="margin-left: 200px">
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;
    </p>
    <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" 
            Font-Names="Autobahn Stencil" Font-Overline="False" Font-Underline="True">
        <Nodes>
            <asp:TreeNode Text="Insert Book" Value="Insert Book"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Default3.aspx" Text="Show Books" 
                Value="Show Books"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Default4.aspx" Text="Edit Book" Value="Edit Book">
            </asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Default5.aspx" Text="Search Book" 
                Value="Search Book"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" BorderColor="#1F7ECD" 
        BorderStyle="Double" BorderWidth="3px" ImageUrl="~/library.jpg" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
