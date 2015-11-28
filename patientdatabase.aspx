<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientdatabase.aspx.cs" Inherits="patientdatabase" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patient&#39;s database&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Back to Profile" 
        PostBackUrl="~/adminprofile.aspx" />
    <br />



    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="userid" DataSourceID="SqlDataSource1">
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
            <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
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
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            
        </ItemTemplate>
    </asp:FormView>



<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString2 %>" 
        SelectCommand="SELECT * FROM [tbpatientreg]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [tbpatientreg] WHERE [userid] = @original_userid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Number_Of_Units] = @original_Number_Of_Units) OR ([Number_Of_Units] IS NULL AND @original_Number_Of_Units IS NULL)) AND (([Mobile_No] = @original_Mobile_No) OR ([Mobile_No] IS NULL AND @original_Mobile_No IS NULL)) AND (([Landline_No] = @original_Landline_No) OR ([Landline_No] IS NULL AND @original_Landline_No IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Permanent_Address] = @original_Permanent_Address) OR ([Permanent_Address] IS NULL AND @original_Permanent_Address IS NULL)) AND (([Purpose] = @original_Purpose) OR ([Purpose] IS NULL AND @original_Purpose IS NULL))" 
        InsertCommand="INSERT INTO [tbpatientreg] ([Name], [Blood_Group], [Age], [Date], [Number_Of_Units], [Mobile_No], [Landline_No], [City], [State], [Permanent_Address], [Purpose]) VALUES (@Name, @Blood_Group, @Age, @Date, @Number_Of_Units, @Mobile_No, @Landline_No, @City, @State, @Permanent_Address, @Purpose)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [tbpatientreg] SET [Name] = @Name, [Blood_Group] = @Blood_Group, [Age] = @Age, [Date] = @Date, [Number_Of_Units] = @Number_Of_Units, [Mobile_No] = @Mobile_No, [Landline_No] = @Landline_No, [City] = @City, [State] = @State, [Permanent_Address] = @Permanent_Address, [Purpose] = @Purpose WHERE [userid] = @original_userid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Number_Of_Units] = @original_Number_Of_Units) OR ([Number_Of_Units] IS NULL AND @original_Number_Of_Units IS NULL)) AND (([Mobile_No] = @original_Mobile_No) OR ([Mobile_No] IS NULL AND @original_Mobile_No IS NULL)) AND (([Landline_No] = @original_Landline_No) OR ([Landline_No] IS NULL AND @original_Landline_No IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Permanent_Address] = @original_Permanent_Address) OR ([Permanent_Address] IS NULL AND @original_Permanent_Address IS NULL)) AND (([Purpose] = @original_Purpose) OR ([Purpose] IS NULL AND @original_Purpose IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_userid" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Blood_Group" Type="String" />
            <asp:Parameter Name="original_Age" Type="Int32" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Number_Of_Units" Type="Int32" />
            <asp:Parameter Name="original_Mobile_No" Type="String" />
            <asp:Parameter Name="original_Landline_No" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Permanent_Address" Type="String" />
            <asp:Parameter Name="original_Purpose" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Blood_Group" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Number_Of_Units" Type="Int32" />
            <asp:Parameter Name="Mobile_No" Type="String" />
            <asp:Parameter Name="Landline_No" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Permanent_Address" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Blood_Group" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Number_Of_Units" Type="Int32" />
            <asp:Parameter Name="Mobile_No" Type="String" />
            <asp:Parameter Name="Landline_No" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Permanent_Address" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="original_userid" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Blood_Group" Type="String" />
            <asp:Parameter Name="original_Age" Type="Int32" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Number_Of_Units" Type="Int32" />
            <asp:Parameter Name="original_Mobile_No" Type="String" />
            <asp:Parameter Name="original_Landline_No" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Permanent_Address" Type="String" />
            <asp:Parameter Name="original_Purpose" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

