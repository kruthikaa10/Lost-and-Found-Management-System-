<%@ Page Title="Lost Items"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="LostItems.aspx.cs"
    Inherits="LostAndFound.LostItems" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Lost Items</h2>

    <asp:GridView ID="gvLostItems"
        runat="server"
        AutoGenerateColumns="False"
        CssClass="table">

        <Columns>

            <asp:BoundField
                DataField="ItemName"
                HeaderText="Item Name" />

            <asp:BoundField
                DataField="Category"
                HeaderText="Category" />

            <asp:BoundField
                DataField="Description"
                HeaderText="Description" />

            <asp:BoundField
                DataField="Location"
                HeaderText="Location Lost" />

            <asp:BoundField
                DataField="DateLost"
                HeaderText="Date Lost"
                DataFormatString="{0:dd/MM/yyyy}" />

            <asp:BoundField
                DataField="Contact"
                HeaderText="Contact" />

        </Columns>

    </asp:GridView>

</asp:Content>