<%@ Page Title="" Language="C#" MasterPageFile="~/inventory.master" AutoEventWireup="true" CodeFile="Search_Customer.aspx.cs" Inherits="Search_Customer" %>

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
        .style35
        {
            width: 196px;
            height: 36px;
        }
        .style38
        {
            width: 196px;
            height: 35px;
        }
        .style39
        {
            height: 35px;
        }
        .style40
        {
            width: 196px;
            height: 32px;
        }
        .style41
        {
            height: 32px;
        }
        .style42
        {
            width: 196px;
            height: 34px;
        }
        .style43
        {
            height: 34px;
        }
        .style44
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="background-color: #FFCC66; padding: 25px; width: 95%;">
        <tr>
            <td class="style33" style="font-weight: 700; font-size: x-large" colspan="2">
                Search Customer<br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" CssClass="style34" 
                    ForeColor="#FF3300" GroupName="abc" Text="By ID" />
                &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" CssClass="style34" 
                    ForeColor="#FF3300" GroupName="abc" Text="By  Name" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="300px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" Height="30px" 
                    style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
                    Text="Search" Width="120px" onclick="Button13_Click" />
            </td>
        </tr>
       
    </table>
    <asp:Panel ID="Panel1" runat="server" Height="439px">
       <table  style="border: 2px solid #FF6600; background-color: #FFCC66; padding:25px; width: 95%; border-collapse: collapse;">
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Customer ID:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Customer Name:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Father Name:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                DOB:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Gender:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Email:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Mobile Number:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                City:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style40">
                Pincode Number:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style41">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style42">
                State:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style43">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style38">
                Country:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style39">
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="1" rowspan="1" 
                
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style35">
                Address:</td>
            <td colspan="1" rowspan="1" 
                style="border: 2px solid #FF6600; border-collapse: collapse;" 
                class="style44">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
        </tr>
       </table>
    </asp:Panel>
</asp:Content>


