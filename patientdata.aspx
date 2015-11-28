<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientdata.aspx.cs" Inherits="patientdata" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>   &nbsp;&nbsp;&nbsp; Welcome to your Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/patientprofile.aspx" 
        Text="Back to Profile" />
    <br />
    <br /><asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" DataKeyNames="userid" DataSourceID="SqlDataSource1" 
        Width="374px">
        <EditItemTemplate>
            userid:
            <asp:Label ID="useridLabel1" runat="server" Text='<%# Eval("userid") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Blood_Group:
            <asp:TextBox ID="Blood_GroupTextBox" runat="server" 
                Text='<%# Bind("Blood_Group") %>' />
            <br />
            Age:
            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Number_Of_Units:
            <asp:TextBox ID="Number_Of_UnitsTextBox" runat="server" 
                Text='<%# Bind("Number_Of_Units") %>' />
            <br />
            Mobile_No:
            <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                Text='<%# Bind("Mobile_No") %>' />
            <br />
            Landline_No:
            <asp:TextBox ID="Landline_NoTextBox" runat="server" 
                Text='<%# Bind("Landline_No") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Permanent_Address:
            <asp:TextBox ID="Permanent_AddressTextBox" runat="server" 
                Text='<%# Bind("Permanent_Address") %>' />
            <br />
            Purpose:
            <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Blood_Group:
            <asp:TextBox ID="Blood_GroupTextBox" runat="server" 
                Text='<%# Bind("Blood_Group") %>' />
            <br />
            Age:
            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Number_Of_Units:
            <asp:TextBox ID="Number_Of_UnitsTextBox" runat="server" 
                Text='<%# Bind("Number_Of_Units") %>' />
            <br />
            Mobile_No:
            <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                Text='<%# Bind("Mobile_No") %>' />
            <br />
            Landline_No:
            <asp:TextBox ID="Landline_NoTextBox" runat="server" 
                Text='<%# Bind("Landline_No") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Permanent_Address:
            <asp:TextBox ID="Permanent_AddressTextBox" runat="server" 
                Text='<%# Bind("Permanent_Address") %>' />
            <br />
            Purpose:
            <asp:TextBox ID="PurposeTextBox" runat="server" 
                Text='<%# Bind("Purpose") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            userid:
            <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Blood_Group:
            <asp:Label ID="Blood_GroupLabel" runat="server" 
                Text='<%# Bind("Blood_Group") %>' />
            <br />
            Age:
            <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Number_Of_Units:
            <asp:Label ID="Number_Of_UnitsLabel" runat="server" 
                Text='<%# Bind("Number_Of_Units") %>' />
            <br />
            Mobile_No:
            <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Bind("Mobile_No") %>' />
            <br />
            Landline_No:
            <asp:Label ID="Landline_NoLabel" runat="server" 
                Text='<%# Bind("Landline_No") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Permanent_Address:
            <asp:Label ID="Permanent_AddressLabel" runat="server" 
                Text='<%# Bind("Permanent_Address") %>' />
            <br />
            Purpose:
            <asp:Label ID="PurposeLabel" runat="server" Text='<%# Bind("Purpose") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString2 %>" 
        SelectCommand="SELECT * FROM [tbpatientreg] WHERE ([userid] = @userid)">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="mycod" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div> 
</asp:Content>

