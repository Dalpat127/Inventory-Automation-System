<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="new_supplier.aspx.cs" Inherits="new_supplier" %>

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
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .style38
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
                <asp:Label ID="Label1" runat="server" Text="sid" Visible="False"></asp:Label>
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
                New Supplier<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">Company Name:&nbsp;<br />
&nbsp;</span></span><asp:TextBox ID="TextBox1" runat="server" CssClass="style34" Height="30px" 
                    Width="300px" ></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Owner Name:</span><br />
                </span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">Email:</span><b><br />
                </b></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style34" Height="30px" 
                    TextMode="Email" Width="300px"></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Mobile Number:</span><br />
                </span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style34" Height="30px" 
                    TextMode="Number" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <span class="style33"><span class="style35">City:</span><b><span 
                    class="style35">
                </span><br />
                </b></span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
            <td>
                <span class="style34"><span class="style35">Pincode Number:</span><br />
                </span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style34" Height="30px" 
                    TextMode="Number" Width="300px"></asp:TextBox>
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
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style33" Height="35px" 
                    TextMode="MultiLine" Width="660px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style38">
                <strong>
                <br />
                <asp:Button ID="Button13" runat="server" CssClass="style37" Height="40px" 
                    onclick="Button13_Click" Text="Add Supplier" Width="160px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

