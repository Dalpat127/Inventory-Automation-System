<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgatepassword.aspx.cs" Inherits="forgatepassword" %>

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
         text-align: center;
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
                    Enter
                    User ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style2" Height="31px" 
                        Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
    </center>
            <tr>
                <td colspan="2" class="style4">
                    <asp:Button ID="Button1" runat="server" Height="44px" onclick="Button1_Click" 
                        style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #000000" 
                        Text="Back" Width="189px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="44px" onclick="Button2_Click" 
                        style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #000000" 
                        Text="Next" Width="189px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
