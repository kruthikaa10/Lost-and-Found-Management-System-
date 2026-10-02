<%@ Page Title="Manage Lost Items" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLostItems.aspx.cs" Inherits="LostAndFound.AdminLostItems" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Lost Items</h2>
    <asp:GridView ID="gvAdminLost" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="LostItemID" OnRowDeleting="gvAdminLost_RowDeleting">
        <Columns>
            <asp:BoundField DataField="LostItemID" HeaderText="ID" />
            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="UserEmail" HeaderText="Reported By" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
