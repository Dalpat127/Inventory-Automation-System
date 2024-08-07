<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style34
        {
            color: #FF3300;
            font-weight: bold;
        }
        .style35
        {
            height: 50px;
            font-weight: 700;
            font-size: x-large;
        }
        .style36
        {
            color: #FF3300;
        }
        .style40
        {
            height: 50px;
            text-align: center;
        }
        .style42
        {
            color: #FF3300;
            font-weight: bold;
            height: 30px;
        }
        .style43
        {
            height: 30px;
        }
        .style44
        {
            height: 30px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-color: #FFCC66; padding: 25px; width: 95%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="purchase id" Visible="False"></asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style35" colspan="2">
                Purchase Item<br />
            </td>
        </tr>
        <tr>
            <td class="style42" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Supplier ID:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="sid" DataValueField="sid" 
                    Height="30px" Width="310px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Inventory_Automation_SystemConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [sid] FROM [new_supplier]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style42" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Item Name:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style42" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Item Quantity:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style42" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Item Price:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr class="style36">
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <b>Total Amount:</b></td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <b>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </b>
                <asp:Button ID="Button14" runat="server" Height="30px" onclick="Button14_Click" 
                    style="font-weight: 700; font-size: medium; color: #FFFFFF; background-color: #000000" 
                    Text="Calculate" Width="100px" />
            </td>
        </tr>
        <tr class="style36">
            <td class="style44" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Enter Pic 1:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="331px" />
            </td>
        </tr>
        <tr class="style36">
            <td class="style44" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Enter Pic 2:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:FileUpload ID="FileUpload2" runat="server" Height="30px" Width="330px" />
            </td>
        </tr>
        <tr class="style36">
            <td class="style44" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Enter Pic 3:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:FileUpload ID="FileUpload3" runat="server" Height="30px" Width="330px" />
            </td>
        </tr>
        <tr class="style36">
            <td class="style44" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Enter Pic 4:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:FileUpload ID="FileUpload4" runat="server" Height="30px" Width="330px" />
            </td>
        </tr>
        <tr class="style36">
            <td class="style44" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                Remark:</td>
            <td class="style43" 
                
                
                style="border-style: solid; border-top-width: 1px; border-right-width: 1px; border-color: #800000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style34" Height="30px" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr class="style36">
            <td class="style40" colspan="2">
                <asp:Button ID="Button13" runat="server" Height="37px" 
                    style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #000000" 
                    Text="Purchase" Width="169px" onclick="Button13_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

