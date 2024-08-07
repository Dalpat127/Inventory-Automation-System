<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="All_Customer.aspx.cs" Inherits="All_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            font-size: x-large;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="width: 95%">
        <tr>
            <td class="style33" style="background-color: #FFCC66; padding: 25px">
                <strong>All Customer<br />
                </strong>
            </td>
        </tr>
        <tr>
            <td>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" DataKeyNames="sid" 
                    DataSourceID="SqlDataSource1" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="sid" HeaderText="SID" ReadOnly="True" 
                            SortExpression="sid" />
                        <asp:BoundField DataField="company_name" HeaderText="Company Name" 
                            SortExpression="company_name" />
                        <asp:BoundField DataField="owner_name" HeaderText="Owner Name" 
                            SortExpression="owner_name" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." 
                            SortExpression="mobile_no" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="country" HeaderText="Country" 
                            SortExpression="country" />
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="tos" HeaderText="Time" SortExpression="tos" />
                        <asp:BoundField DataField="dos" HeaderText="Date" SortExpression="dos" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Inventory_Automation_SystemConnectionString %>" 
                    DeleteCommand="DELETE FROM [new_supplier] WHERE [sid] = @sid" 
                    InsertCommand="INSERT INTO [new_supplier] ([sid], [company_name], [owner_name], [email], [mobile_no], [city], [pincode], [state], [country], [address], [tos], [dos]) VALUES (@sid, @company_name, @owner_name, @email, @mobile_no, @city, @pincode, @state, @country, @address, @tos, @dos)" 
                    SelectCommand="SELECT * FROM [new_supplier]" 
                    UpdateCommand="UPDATE [new_supplier] SET [company_name] = @company_name, [owner_name] = @owner_name, [email] = @email, [mobile_no] = @mobile_no, [city] = @city, [pincode] = @pincode, [state] = @state, [country] = @country, [address] = @address, [tos] = @tos, [dos] = @dos WHERE [sid] = @sid">
                    <DeleteParameters>
                        <asp:Parameter Name="sid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sid" Type="Int32" />
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="owner_name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="Int32" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="tos" Type="String" />
                        <asp:Parameter Name="dos" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="owner_name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="Int32" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="tos" Type="String" />
                        <asp:Parameter Name="dos" Type="String" />
                        <asp:Parameter Name="sid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>



