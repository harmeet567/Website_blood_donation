<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewprofile1.aspx.cs" Inherits="viewprofile1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 41px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome 
        to your Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/donorprofile.aspx" 
            Text="Back to  Profile" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="userid" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
            Width="276px">
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
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [tbdonorreg] WHERE ([userid] = @userid2)" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [tbdonorreg] WHERE [userid] = @original_userid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Date_Of_Birth] = @original_Date_Of_Birth) OR ([Date_Of_Birth] IS NULL AND @original_Date_Of_Birth IS NULL)) AND (([Mobile_No] = @original_Mobile_No) OR ([Mobile_No] IS NULL AND @original_Mobile_No IS NULL)) AND (([Landline_No] = @original_Landline_No) OR ([Landline_No] IS NULL AND @original_Landline_No IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Permanent_Address] = @original_Permanent_Address) OR ([Permanent_Address] IS NULL AND @original_Permanent_Address IS NULL))" 
            InsertCommand="INSERT INTO [tbdonorreg] ([Name], [Blood_Group], [Gender], [Date_Of_Birth], [Mobile_No], [Landline_No], [State], [City], [Email], [Permanent_Address]) VALUES (@Name, @Blood_Group, @Gender, @Date_Of_Birth, @Mobile_No, @Landline_No, @State, @City, @Email, @Permanent_Address)" 
            UpdateCommand="UPDATE [tbdonorreg] SET [Name] = @Name, [Blood_Group] = @Blood_Group, [Gender] = @Gender, [Date_Of_Birth] = @Date_Of_Birth, [Mobile_No] = @Mobile_No, [Landline_No] = @Landline_No, [State] = @State, [City] = @City, [Email] = @Email, [Permanent_Address] = @Permanent_Address WHERE [userid] = @original_userid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Date_Of_Birth] = @original_Date_Of_Birth) OR ([Date_Of_Birth] IS NULL AND @original_Date_Of_Birth IS NULL)) AND (([Mobile_No] = @original_Mobile_No) OR ([Mobile_No] IS NULL AND @original_Mobile_No IS NULL)) AND (([Landline_No] = @original_Landline_No) OR ([Landline_No] IS NULL AND @original_Landline_No IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Permanent_Address] = @original_Permanent_Address) OR ([Permanent_Address] IS NULL AND @original_Permanent_Address IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Blood_Group" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Date_Of_Birth" Type="String" />
                <asp:Parameter Name="original_Mobile_No" Type="String" />
                <asp:Parameter Name="original_Landline_No" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Permanent_Address" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Blood_Group" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date_Of_Birth" Type="String" />
                <asp:Parameter Name="Mobile_No" Type="String" />
                <asp:Parameter Name="Landline_No" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Permanent_Address" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="userid2" SessionField="mycod" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Blood_Group" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date_Of_Birth" Type="String" />
                <asp:Parameter Name="Mobile_No" Type="String" />
                <asp:Parameter Name="Landline_No" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Permanent_Address" Type="String" />
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Blood_Group" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Date_Of_Birth" Type="String" />
                <asp:Parameter Name="original_Mobile_No" Type="String" />
                <asp:Parameter Name="original_Landline_No" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Permanent_Address" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
<br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>

