<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="donorreg.aspx.cs" Inherits="donor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width: 427px; height: 528px; margin-top: 0px">
         <table border="1">
<tr>
<th colspan="3">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Donor Registeration</th>



</tr>
<tr>
<th class="style32">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Full Name
</th>
<th class="style33">

    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

</th>
<th class="style54">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th class="style52">
&nbsp;&nbsp;
Blood Group
</th>
<th class="style52">
    <asp:DropDownList ID="drpbldgrp" runat="server" AutoPostBack="True">
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>AB+</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
    </asp:DropDownList>
</th>
<th class="style53">
    &nbsp;</th>
</tr>
<tr>
<th class="style34">
Gender
</th>
<th class="style35">
    <asp:DropDownList ID="drpgndr" runat="server" AutoPostBack="True">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
</th>
<th class="style55">
    &nbsp;</th>
</tr>
<tr>
<th>
    Date Of Birth
</th>
<th class="style41">
    <asp:TextBox ID="txtdob" runat="server" Height="20px" Width="88px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/calendar.JPG" 
        Height="16px" Width="24px" />
</th>
<th class="style56">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtdob" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th>
Mobile Number
</th>
<th class="style50">
    <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
</th>
<th class="style57">
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="txtmob" ErrorMessage="Enter Valid Mobile No." 
        MaximumValue="10" MinimumValue="10" Type="Integer" ValidationGroup="a"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtmob" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th class="style34">
Landline number
</th>
    
<th class="style35">
<asp:TextBox ID="txtland" runat="server" style="margin-left: 0px"></asp:TextBox>
</th>
    
<th class="style55">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtland" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th class="style51">
State
</th>
<th class="style41">
    <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="statename" 
        DataValueField="statename">
    </asp:DropDownList>
</th>
<th class="style56">
    &nbsp;</th>
</tr>
<tr>
<th class="style45">
City
</th>
<th class="style46">
    <asp:DropDownList ID="drpcity" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="cityname" DataValueField="cityname">
    </asp:DropDownList>
</th>
<th class="style58">
    &nbsp;</th>
</tr>
<tr>
<th class="style32">
E-Mail ID
</th>
<th class="style33">
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
</th>
<th class="style54">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Should be in proper Format" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ValidationGroup="a"></asp:RegularExpressionValidator>
    </th>
</tr>
<tr>
<th class="style32">
Permanent Address
</th>
<th class="style33">
    <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
</th>
<th class="style54">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtadd" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th class="style38">
UserName
</th>
<th class="style39">
    <asp:TextBox ID="txtusr" runat="server" ontextchanged="txtusr_TextChanged"></asp:TextBox>
</th>
<th class="style59">
    <asp:Button ID="Button1" runat="server" Text="Check Availability" 
        Width="116px" onclick="Button1_Click" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtusr" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
    </th>
</tr>
<tr>
<th class="style40">
Password
</th>
<th class="style41">
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
</th>
<th class="style56">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtpass" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </th>
</tr>

</table>    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnreset" runat="server" Text="Reset" onclick="btnreset_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
<asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click" />
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
             TargetControlID="txtdob" FirstDayOfWeek="Monday" DefaultView="Years" PopupButtonID="Image1">
        </asp:CalendarExtender>
         <br />
         <asp:Label ID="comment" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString2 %>" 
        SelectCommand="SELECT [statename] FROM [tbstate]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbhealthConnectionString2 %>" 
        SelectCommand="SELECT [cityname] FROM [tbcity]"></asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="a" />
</div>


</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style22
        {
            width: 228px;
        }
        .style26
    {
        width: 182px;
        height: 36px;
    }
    .style27
    {
        width: 124px;
        height: 36px;
        margin-left: 0px;
    }
    .style30
    {
            width: 182px;
            height: 32px;
        }
    .style32
    {
            width: 182px;
            height: 24px;
        }
    .style33
    {
            width: 124px;
            height: 24px;
            margin-left: 0px;
        }
    .style34
    {
            width: 182px;
            height: 26px;
        }
    .style35
    {
            width: 124px;
            height: 26px;
            margin-left: 0px;
        }
    .style38
    {
        width: 182px;
        height: 30px;
    }
    .style39
    {
        width: 124px;
        height: 30px;
        margin-left: 0px;
    }
    .style40
    {
        width: 182px;
        height: 20px;
    }
    .style41
    {
        width: 124px;
        height: 20px;
        margin-left: 0px;
    }
        .style45
        {
            width: 182px;
        }
        .style46
        {
            width: 124px;
            margin-left: 0px;
        }
        .style50
        {
            width: 124px;
            height: 18px;
            margin-left: 0px;
        }
        .style51
        {
            height: 20px;
        }
        .style52
        {
            height: 1px;
        }
        .style53
        {
            height: 1px;
            width: 236px;
        }
        .style54
        {
            width: 236px;
            height: 24px;
            margin-left: 0px;
        }
        .style55
        {
            width: 236px;
            height: 26px;
            margin-left: 0px;
        }
        .style56
        {
            width: 236px;
            height: 20px;
            margin-left: 0px;
        }
        .style57
        {
            width: 236px;
            height: 18px;
            margin-left: 0px;
        }
        .style58
        {
            width: 236px;
            margin-left: 0px;
        }
        .style59
        {
            width: 236px;
            height: 30px;
            margin-left: 0px;
        }
    </style>
  
</asp:Content>


