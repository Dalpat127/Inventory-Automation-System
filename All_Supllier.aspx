<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="All_Supllier.aspx.cs" Inherits="All_Supllier" %>

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
                <strong>All Supplier<br />
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                    DataKeyNames="cid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="cid" HeaderText="CID" ReadOnly="True" 
                            SortExpression="cid" />
                        <asp:BoundField DataField="full_name" HeaderText="Name" 
                            SortExpression="full_name" />
                        <asp:BoundField DataField="father_name" HeaderText="Father Name" 
                            SortExpression="father_name" />
                        <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                            SortExpression="gender" />
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
                        <asp:BoundField DataField="toc" HeaderText="Time" SortExpression="toc" />
                        <asp:BoundField DataField="doc" HeaderText="Date" SortExpression="doc" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Inventory_Automation_SystemConnectionString %>" 
                    DeleteCommand="DELETE FROM [new_customer] WHERE [cid] = @cid" 
                    InsertCommand="INSERT INTO [new_customer] ([cid], [full_name], [father_name], [dob], [gender], [email], [mobile_no], [city], [pincode], [state], [country], [address], [toc], [doc]) VALUES (@cid, @full_name, @father_name, @dob, @gender, @email, @mobile_no, @city, @pincode, @state, @country, @address, @toc, @doc)" 
                    SelectCommand="SELECT * FROM [new_customer]" 
                    UpdateCommand="UPDATE [new_customer] SET [full_name] = @full_name, [father_name] = @father_name, [dob] = @dob, [gender] = @gender, [email] = @email, [mobile_no] = @mobile_no, [city] = @city, [pincode] = @pincode, [state] = @state, [country] = @country, [address] = @address, [toc] = @toc, [doc] = @doc WHERE [cid] = @cid">
                    <DeleteParameters>
                        <asp:Parameter Name="cid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="full_name" Type="String" />
                        <asp:Parameter Name="father_name" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="Int32" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="toc" Type="String" />
                        <asp:Parameter Name="doc" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="full_name" Type="String" />
                        <asp:Parameter Name="father_name" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="Int32" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="toc" Type="String" />
                        <asp:Parameter Name="doc" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

