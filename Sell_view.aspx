<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Sell_view.aspx.cs" Inherits="Sell_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            font-weight: bold;
            text-align: left;
        }
        .style34
        {
            font-weight: bold;
            color: #FF0000;
        }
        .style35
        {
            text-align: center;
        }
        .style36
        {
            font-weight: bold;
            color: #FF0000;
            text-align: left;
        }
        .style37
        {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-color: #FFCC66">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Width="485px">
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
       
            <tr >
            <td  height="22px" style="border: thin outset #808080; border-collapse: collapse;" 
                    class="style34">
                &nbsp;&nbsp; Sell ID:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr>
            <td " height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;" class="style34">
                &nbsp;&nbsp; Customer ID:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr">
            <td  height="22px" 
            style="border: thin outset #808080; border-collapse: collapse;" class="style34">
                &nbsp;&nbsp;
                Item Name:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style42" 
            style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;
                <asp:Label ID="Label3" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr class="style35">
            <td class="style36" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Item Quantity:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style33" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="style45"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style34" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Item Price:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style37" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;
                <asp:Label ID="Label5" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style34" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Total Amount:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style37">
                &nbsp;
                <asp:Label ID="Label6" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style34" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Time:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style37">
                &nbsp;
                <asp:Label ID="Label7" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style34" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Date:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style37">
                &nbsp;
                <asp:Label ID="Label8" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr class="style36">
            <td class="style34" height="22px" 
                style="border: thin outset #808080; border-collapse: collapse;">
                &nbsp;&nbsp;
                Remark:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border: thin outset #808080; border-collapse: collapse;" 
                class="style37">
                &nbsp;
                <asp:Label ID="Label9" runat="server" CssClass="style37" 
                    style="font-weight: bold"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style35" colspan="2" height="22px" 
                style="border: thin outset #808080">
                <asp:Button ID="Button13" runat="server" Height="31px" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Back" Width="150px" onclick="Button13_Click" />
                <br />
            </td>
        </tr>

        
    </table>
</asp:Content>

