<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="New_Customer.aspx.cs" Inherits="New_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            color: #FF0000;
        }
        .style34
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style35
        {
            background-color: #FFCC66;
        }
        .style36
        {
            height: 38px;
        }
        .style37
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="background-color: #FFCC66; padding: 20px; width: 89%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="cid" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="style36" colspan="2" 
                style="text-align: left; font-weight: 700; color: #000066; font-size: x-large">
                New Customer<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style34">
                First Name:<br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Father&#39;s Name:</span><br />
                </span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">DOB:</span><b><br />
                </b></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style34" Height="30px" 
                    TextMode="Date" Width="300px"></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Gender:</span><br />
                </span>
                <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="#FF3300" 
                    GroupName="abc" Text="Male" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#FF3300" 
                    GroupName="abc" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">Email:</span><b><span 
                    class="style35">
                </span><br />
                </b></span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Mobile Number:</span><br />
                </span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style34" Height="30px" 
                    TextMode="Number" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                City:<br />
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
            <td>
                <span class="style33"><strong>Pincode Number:</strong></span><br />
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">State:</span><b><br />
                </b></span>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style34" 
                    Height="30px" Width="308px">
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                    <asp:ListItem>Panjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Up</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <span class="style34"><span class="style35">Country:</span><br />
                </span>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style34" 
                    Height="30px" Width="309px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span class="style33"><strong><span class="style35">Address:</span><br />
                </strong></span><strong>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="style33" Height="35px" 
                    TextMode="MultiLine" Width="660px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style37">
                <br />
                <asp:Button ID="Button13" runat="server" Height="40px" onclick="Button13_Click" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Add Customer" Width="160px" />
            </td>
        </tr>
    </table>
</asp:Content>



