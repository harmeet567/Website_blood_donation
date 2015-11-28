<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <table border="2" style="height: 191px; width: 262px">
    <tr>
    <th colspan="2">
        ADMIN&nbsp;
        LOGIN</th>
    </tr>
    <tr>
    <th>
        Username</th>
    <th class="style31">
        <asp:TextBox ID="txtusr" runat="server"></asp:TextBox>
        </th>
    </tr>
    <tr>
    <th>Password</th>
    <th class="style31">
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        </th>
    </tr>
    </table>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogin" runat="server" Text="Login" Width="73px" 
            style="height: 26px" onclick="btnlogin_Click1"/>
    
        <br />
        <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <br />
        <br />
        <br />
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
            TargetControlID="txtusr" WatermarkText="Your Name Here">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtpass" WatermarkText="Min. 8 & Max 16">
        </asp:TextBoxWatermarkExtender>
        <asp:PasswordStrength ID="PasswordStrength1" runat="server" 
            TargetControlID="txtpass" PreferredPasswordLength="10" 
            TextStrengthDescriptions="very poor;poor;average;good;excellent" 
            HelpHandlePosition="RightSide">
        </asp:PasswordStrength>
    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style31
        {
            width: 61px;
        }
    </style>
</asp:Content>


