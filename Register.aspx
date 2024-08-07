<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 53px;
        }
        .style34
        {
            color: #FF3300;
            font-weight: bold;
        }
        .style35
        {
            height: 60px;
            text-align: center;
        }
        .style36
        {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .style38
        {
            height: 60px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body style="height: 445px">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/img/damy.jpg" 
                        Width="93px" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" 
                    style="text-align: center; font-weight: 700; font-size: xx-large; color: #000066">
                    Registration</td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style34">Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
                </td>
                <td class="style35">
                    <span class="style34">Username: </span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style34">Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style35">
                    <span class="style34">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style34">Contact Number: </span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="style35">
                    <span class="style34">City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style34">Pincode Number: </span>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="style35">
                    <span class="style34">State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style34" 
                    Height="30px" Width="308px">
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                    <asp:ListItem>Panjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Up</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style34">Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style34" 
                    Height="30px" Width="309px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td class="style35">
                    <span class="style34">Address:&nbsp; </span>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style35" colspan="2">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="style36" Height="40px" 
                        onclick="Button1_Click1" Text="Back" Width="170px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="id" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="style36" Height="40px" 
                        onclick="Button2_Click" Text="Register" Width="170px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
