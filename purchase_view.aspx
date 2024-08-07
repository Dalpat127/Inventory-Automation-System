<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="purchase_view.aspx.cs" Inherits="purchase_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            height: 22px;
            font-weight: bold;
        }
        .style35
        {
            color: #FF0000;
            font-size: large;
        }
        .style36
        {
            font-size: large;
        }
        .style37
        {
            font-weight: bold;
        }
        .style39
        {
            font-weight: bold;
            color: #FF0000;
            text-align: left;
        }
        .style41
        {
            font-weight: bold;
            color: #FF0000;
            height: 23px;
            text-align: left;
        }
        .style42
        {
            height: 23px;
        }
        .style43
        {
            font-weight: bold;
            color: #FF0000;
            height: 21px;
            text-align: left;
        }
        .style44
        {
            height: 21px;
        }
        .style45
        {
            color: #000066;
        }
        .style46
        {
            height: 22px;
            font-weight: bold;
            text-align: left;
        }
        .style47
        {
            font-weight: bold;
            color: #FF0000;
            text-align: left;
        }
        .style48
        {
            font-weight: bold;
            color: #FF0000;
            text-align: Center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="border: 2px solid #FF0066; background-color: #FFCC66; padding: 25px; border-collapse: collapse;">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Width="486px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic1" HeaderText="Picture 1">
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="pic2" HeaderText="Picture 2">
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="pic3" HeaderText="Picture 3">
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="pic4" HeaderText="Picture 4">
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
        <tr class="style36">
            <td class="style39" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Purchase ID:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style39" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Supplier ID:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style41" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Item Name:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style42" style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label3" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style35">
            <td class="style46" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Item Quantity:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style33" style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="style45"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style43" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Item Price:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style44" style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label5" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style39" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Total Amount:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label6" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style39" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Time:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label7" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style39" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Date:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label8" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style47" height="22px" style="border: thin outset #808080">
                &nbsp;&nbsp;
                Remark:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080">
                &nbsp;
                <asp:Label ID="Label9" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style48" colspan="2" height="22px" 
                style="border: thin outset #808080">
                <asp:Button ID="Button13" runat="server" Height="31px" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Back" Width="150px" onclick="Button13_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

