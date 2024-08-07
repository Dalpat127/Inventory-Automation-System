<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            height: 42px;
        }
        .style34
        {
            height: 58px;
            font-weight: 700;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-color: #FFCC66; padding: 25px; width: 95%;">
        <tr>
            <td class="style34">
                View Item</td>
        </tr>
        <tr>
            <td class="style33">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" 
                    Text="All Purchase" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                    Text="All Sell" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" Height="32px" 
                    style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #000000" 
                    Text="View" Width="144px" onclick="Button13_Click" />
            </td>
        </tr>
        <tr>
            <td class="style33">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4">
                <Columns>
                    <asp:TemplateField HeaderText="Profile">
                                <ItemTemplate>
                                        <asp:LinkButton ID="pic" runat="server" OnCommand="abc" CommandName='<%#Eval("id") %>'><img alt="profile" src='<%#Eval("pic1") %>' height="50" width="50" style='border-radius:50%'/></asp:LinkButton>

                                </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name">
                                <ItemTemplate>
                                        <%#Eval("item_name") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Quantity">
                                <ItemTemplate>
                                        <%#Eval("item_qty") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Price">
                                <ItemTemplate>
                                        <%#Eval("item_price") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Amount">
                                <ItemTemplate>
                                        <%#Eval("amount") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time">
                                <ItemTemplate>
                                        <%#Eval("pot") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                        <%#Eval("pod") %>
                                </ItemTemplate>
                    </asp:TemplateField>
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
             
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4">
                <Columns>
                    <asp:TemplateField HeaderText="Profile">
                                <ItemTemplate>
                                        <asp:LinkButton ID="pic" runat="server" OnCommand="abcd" CommandName='<%#Eval("id") %>'><img alt="profile" src='<%#Eval("pic1") %>' height="50" width="50" style='border-radius:50%'/></asp:LinkButton>

                                </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name">
                                <ItemTemplate>
                                        <%#Eval("item_name") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Quantity">
                                <ItemTemplate>
                                        <%#Eval("item_qty") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Price">
                                <ItemTemplate>
                                        <%#Eval("item_price") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Amount">
                                <ItemTemplate>
                                        <%#Eval("amount") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time">
                                <ItemTemplate>
                                        <%#Eval("cot") %>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                        <%#Eval("cod") %>
                                </ItemTemplate>
                    </asp:TemplateField>
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
    </table>
</asp:Content>



