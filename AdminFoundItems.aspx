<%@ Page Title="Manage Found Items" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminFoundItems.aspx.cs" Inherits="LostAndFound.AdminFoundItems" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Found Items</h2>
    <asp:GridView ID="gvAdminFound" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="FoundItemID" OnRowDeleting="gvAdminFound_RowDeleting">
        <Columns>
            <asp:BoundField DataField="FoundItemID" HeaderText="ID" />
            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="UserEmail" HeaderText="Reported By" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
