<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        body
        {
           background-image: url('/Inventory Automation System/img/login.jpg');
           background-repeat:no-repeat;
           background-size:cover;
           background-position:center;
           background-attachment:fixed;
        }
        .style1
        {
            color: #800000;
        }
        .style2
        {
            color: #FF6600;
        }
        .style3
        {
            color: #FF6600;
            font-weight: bold;
            font-size: x-large;
        }
        .style4
        {
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table class="style1" style="padding-top:20%; width: 471px; height: 308px;">
            <tr>
                <td class="style3">
                    User ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style2" Height="31px" 
                        Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password 
                    :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" Height="31px" 
                        Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style4" style="text-align: right">
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        style="color: #FF3300; font-weight: 700;" Font-Underline="False" 
                        NavigateUrl="~/forgatepassword.aspx">Forgate Password</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Login" Height="40px" 
                        style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #000000" 
                        Width="150px" onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Sign-Up" Height="40px" 
                        style="color: #FFFFFF; font-weight: 700; font-size: large; background-color: #000000" 
                        Width="150px" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
