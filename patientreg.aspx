<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientreg.aspx.cs" Inherits="patientreg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <table class="style23">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Patient&#39;s Registration</td>
            
        </tr>
        <tr>
            <td>
                &nbsp;Full Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style31">
                Patient&#39;s Blood Group</td>
            <td class="style32">
                <asp:DropDownList ID="drpbloodgrp" runat="server">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style33">
                Patient&#39;s Age</td>
            <td class="style34">
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style35">
                Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style36">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
                
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/calendar.JPG" 
                    Height="16px" Width="24px" />
            </td>
        </tr>
        <tr>
            <td class="style37">
                Number&nbsp;Of Units</td>
            <td class="style38">
                <asp:TextBox ID="txtunits" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style39">
                Mobile No.</td>
            <td class="style40">
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style41">
                Landline No.</td>
            <td class="style42">
                <asp:TextBox ID="txtland" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style43">
                State</td>
            <td class="style44">
                &nbsp;
                <asp:DropDownList ID="drpstate" runat="server">
                    <asp:ListItem>punjab</asp:ListItem>
                    <asp:ListItem>rajasthan</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style45">
                City</td>
            <td class="style46">
                &nbsp;
                <asp:DropDownList ID="drpcity" runat="server">
                    <asp:ListItem>jalandhar</asp:ListItem>
                    <asp:ListItem>amritsar</asp:ListItem>
                    <asp:ListItem>jaipur</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style47">
                Permanent&nbsp;Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style48">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style37">
                UserName</td>
            <td class="style38">
                <asp:TextBox ID="txtusrname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style49">
                Password</td>
            <td class="style50">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style51">
                Purpose</td>
            <td class="style52">
                <asp:TextBox ID="txtpurpose" runat="server" Height="28px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table><br />


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="comment" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click" />


    <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
        PopupButtonID="Image1" TargetControlID="txtdate">
                </asp:CalendarExtender>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style23
        {
            width: 383px;
            border-style: solid;
            border-width: 1px;
            height: 423px;
        }
        .style24
        {
            width: 241px;
        }
    .style26
    {
            width: 184px;
            height: 36px;
        }
    .style27
    {
        width: 38px;
    }
        .style31
        {
            width: 188px;
            height: 30px;
            margin-left: 0px;
        }
        .style32
        {
            width: 986px;
            height: 30px;
        }
        .style33
        {
            width: 188px;
            height: 12px;
            margin-left: 0px;
        }
        .style34
        {
            width: 986px;
            height: 12px;
        }
        .style35
        {
            width: 188px;
            height: 14px;
            margin-left: 0px;
        }
        .style36
        {
            width: 986px;
            height: 14px;
        }
        .style37
        {
            width: 188px;
            height: 18px;
            margin-left: 0px;
        }
        .style38
        {
            width: 986px;
            height: 18px;
        }
        .style39
        {
            width: 188px;
            height: 22px;
            margin-left: 0px;
        }
        .style40
        {
            width: 986px;
            height: 22px;
        }
        .style41
        {
            width: 188px;
            height: 34px;
            margin-left: 0px;
        }
        .style42
        {
            width: 986px;
            height: 34px;
        }
        .style43
        {
            width: 188px;
            height: 6px;
            margin-left: 0px;
        }
        .style44
        {
            width: 986px;
            height: 6px;
        }
        .style45
        {
            width: 188px;
            height: 20px;
            margin-left: 0px;
        }
        .style46
        {
            width: 986px;
            height: 20px;
        }
        .style47
        {
            width: 188px;
            height: 28px;
            margin-left: 0px;
        }
        .style48
        {
            width: 986px;
            height: 28px;
        }
        .style49
        {
            width: 188px;
            height: 24px;
            margin-left: 0px;
        }
        .style50
        {
            width: 986px;
            height: 24px;
        }
        .style51
        {
            width: 188px;
            height: 10px;
            margin-left: 0px;
        }
        .style52
        {
            width: 986px;
            height: 10px;
        }
    </style>
    
    
</asp:Content>


