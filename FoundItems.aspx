<%@ Page Title="Found Items"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="FoundItems.aspx.cs"
    Inherits="LostAndFound.FoundItems" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <h2>Found Items</h2>

        <asp:GridView
            ID="gvFoundItems"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="table"
            EmptyDataText="No found items available.">

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
                    DataField="LocationFound"
                    HeaderText="Location Found" />

                <asp:BoundField
                    DataField="DateFound"
                    HeaderText="Date Found"
                    DataFormatString="{0:dd/MM/yyyy}" />

                <asp:BoundField
                    DataField="Contact"
                    HeaderText="Contact" />

            </Columns>

        </asp:GridView>

    </div>

</asp:Content>