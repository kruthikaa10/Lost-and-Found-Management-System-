<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="LostAndFound.AdminDashboard" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="welcome admin-card">
        <h2>Admin Dashboard</h2>
        <div class="button-row">
            <a href="AdminLostItems.aspx" class="button">Manage Lost Items</a>
            <a href="AdminFoundItems.aspx" class="button">Manage Found Items</a>
            <a href="AdminUsers.aspx" class="button">Manage Users</a>
        </div>
    </div>
</asp:Content>

