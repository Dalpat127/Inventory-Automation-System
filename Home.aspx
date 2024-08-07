<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <br />
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="429px"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button13" runat="server" Height="33px" onclick="Button13_Click" 
                    style="font-weight: 700; color: #000066; font-size: large; background-color: #FFCC66" 
                    Text="Search" Width="130px" />
            </td>
        </tr>
        <tr>
            <td class="style33">
                <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:TemplateField HeaderText="Profile">
                        <ItemTemplate>
                            <asp:LinkButton ID="stock" runat="server" OnCommand="abc" CommandName='<%#Eval("item_name") %>'><img alt="picture" src='<%#Eval("pic1") %>' height="50" width="50" style='border-radius:50%'/></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name">
                        <ItemTemplate>
                            <%#Eval("item_name")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Quantity">
                        <ItemTemplate>
                            <%#Eval("item_qty")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Price">
                        <ItemTemplate>
                            <%#Eval("item_price")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <%#Eval("amount")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time">
                        <ItemTemplate>
                            <%#Eval("sot")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <%#Eval("sod")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

