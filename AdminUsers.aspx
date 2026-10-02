<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="LostAndFound.AdminUsers" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Users</h2>
    <asp:GridView ID="gvAdminUsers" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="UserID" OnRowDeleting="gvAdminUsers_RowDeleting">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="UserType" HeaderText="Role" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
