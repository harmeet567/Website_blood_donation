<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="volunteers.aspx.cs" Inherits="volunteers" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <p style="font-family: 'Comic Sans MS'">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong><span class="style31">&nbsp;</span><span class="style32">V</span><span 
            class="style31">olunteers&nbsp;</span></strong></p>
    <p style="font-family: 'Comic Sans MS'">
        &nbsp;&nbsp;
        &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FormView ID="FormView1" runat="server" 
            AllowPaging="True" CellPadding="4" DataKeyNames="userid" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" Width="340px">
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
                Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                Date_Of_Birth:
                <asp:TextBox ID="Date_Of_BirthTextBox" runat="server" 
                    Text='<%# Bind("Date_Of_Birth") %>' />
                <br />
                Mobile_No:
                <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                    Text='<%# Bind("Mobile_No") %>' />
                <br />
                Landline_No:
                <asp:TextBox ID="Landline_NoTextBox" runat="server" 
                    Text='<%# Bind("Landline_No") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Permanent_Address:
                <asp:TextBox ID="Permanent_AddressTextBox" runat="server" 
                    Text='<%# Bind("Permanent_Address") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Blood_Group:
                <asp:TextBox ID="Blood_GroupTextBox" runat="server" 
                    Text='<%# Bind("Blood_Group") %>' />
                <br />
                Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                Date_Of_Birth:
                <asp:TextBox ID="Date_Of_BirthTextBox" runat="server" 
                    Text='<%# Bind("Date_Of_Birth") %>' />
                <br />
                Mobile_No:
                <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                    Text='<%# Bind("Mobile_No") %>' />
                <br />
                Landline_No:
                <asp:TextBox ID="Landline_NoTextBox" runat="server" 
                    Text='<%# Bind("Landline_No") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Permanent_Address:
                <asp:TextBox ID="Permanent_AddressTextBox" runat="server" 
                    Text='<%# Bind("Permanent_Address") %>' />
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
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                Date_Of_Birth:
                <asp:Label ID="Date_Of_BirthLabel" runat="server" 
                    Text='<%# Bind("Date_Of_Birth") %>' />
                <br />
                Mobile_No:
                <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Bind("Mobile_No") %>' />
                <br />
                Landline_No:
                <asp:Label ID="Landline_NoLabel" runat="server" 
                    Text='<%# Bind("Landline_No") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Permanent_Address:
                <asp:Label ID="Permanent_AddressLabel" runat="server" 
                    Text='<%# Bind("Permanent_Address") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString2 %>" 
            SelectCommand="SELECT * FROM [tbdonorreg]"></asp:SqlDataSource>
    </p>
    <p style="font-family: 'Comic Sans MS'">
        &nbsp;</p>


</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style31
        {
            font-size: x-large;
        }
        .style32
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>


