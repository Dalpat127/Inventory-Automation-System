<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Stock_view.aspx.cs" Inherits="Stock_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style35
        {
            height: 24px;
        }
        .style36
        {
            height: 25px;
        }
        .style37
        {
            height: 26px;
            font-weight: bold;
        }
        .style38
        {
            height: 30px;
        }
        .style39
        {
            height: 29px;
        }
        .style40
        {
            height: 29px;
            font-weight: bold;
            color: #FF3300;
        }
        .style41
        {
            height: 30px;
            font-weight: bold;
            color: #FF3300;
        }
        .style42
        {
            height: 24px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="background-color: #FFCC66; border-style: outset; border-width: medium; border-collapse: collapse">
        <tr>
            <td colspan="2">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Width="466px">
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
                </asp:GridView></td>
        </tr>
        <tr >
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                    class="style41">
                &nbsp;&nbsp; Item Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style38">
                <b>&nbsp;
                </b>
                <asp:Label ID="Label1" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr>
            <td " height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;" 
                class="style41">
                &nbsp;&nbsp; Item Quantity:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style38">
                <b>&nbsp;
                </b>
                <asp:Label ID="Label2" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr">
            <td 
            style="border: thin outset #808080; border-collapse: collapse;" 
            class="style41">
                &nbsp;&nbsp; Item Price:&nbsp;&nbsp; </td>
            <td class="style38" 
            style="border: thin outset #808080; border-collapse: collapse;">
                <b>&nbsp;
                </b>
                <asp:Label ID="Label3" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style35">
            <td class="style41" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp; Total Amount:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style38" 
                style="border: thin outset #808080; border-collapse: collapse;">
                <b>&nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="style45"></asp:Label>
                </b>
            </td>
        </tr>
        <tr class="style36">
            <td class="style41" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp; Time:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style38" 
                style="border: thin outset #808080; border-collapse: collapse;">
                <b>&nbsp;
                </b>
                <asp:Label ID="Label5" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style41" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp; Date:&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style38">
                <b>&nbsp;
                </b>
                <asp:Label ID="Label6" runat="server" CssClass="style37"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style42" colspan="2" height="22px" 
                style="border: thin outset #808080">
                <asp:Button ID="Button13" runat="server" Height="31px" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Back" Width="150px" onclick="Button13_Click" />
                <br />
            </td>
        </tr>

    </table>
</asp:Content>

