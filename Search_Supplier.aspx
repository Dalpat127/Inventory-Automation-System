<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Search_Supplier.aspx.cs" Inherits="Search_Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            height: 42px;
        }
        .style34
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="background-color: #FFCC66; padding: 25px; width: 94%;">
        <tr>
            <td class="style33" style="font-weight: 700; font-size: x-large">
                Search Supplier<br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" CssClass="style34" 
                    ForeColor="#FF3300" GroupName="abc" Text="By ID" />
                &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" CssClass="style34" 
                    ForeColor="#FF3300" GroupName="abc" Text="By Company Name" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="300px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" Height="30px" onclick="Button13_Click" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Search" Width="120px" />
            </td>
        </tr>
        <tr>
            <td>
              <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2">
                 <Columns>
                         <asp:TemplateField HeaderText="SID">
                                 <ItemTemplate>
                                     <%#Eval("sid") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Comapny Name">
                                 <ItemTemplate>
                                    <%#Eval("company_name") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Owner Name">
                                 <ItemTemplate>
                                     <%#Eval("owner_name") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Email">
                                 <ItemTemplate>
                                     <%#Eval("email") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Mobile Number">
                                 <ItemTemplate>
                                     <%#Eval("mobile_no")%>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="City">
                                 <ItemTemplate>
                                     <%#Eval("city") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Pincode Number">
                                 <ItemTemplate>
                                     <%#Eval("pincode") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="State">
                                 <ItemTemplate>
                                     <%#Eval("state") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Country">
                                 <ItemTemplate>
                                     <%#Eval("country") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Address">
                                 <ItemTemplate>
                                     <%#Eval("address") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Time">
                                 <ItemTemplate>
                                     <%#Eval("tos") %>
                                 </ItemTemplate>
                         </asp:TemplateField>
                          <asp:TemplateField HeaderText="Date">
                                 <ItemTemplate>
                                     <%#Eval("dos") %>
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
                </asp:GridView>--%>
                <center>
                    <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2">
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

