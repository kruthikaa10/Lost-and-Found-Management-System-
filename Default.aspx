<%@ Page Title="Home"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="LostAndFound._Default" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="welcome">

            <h2>Welcome to Lost &amp; Found</h2>

            <p>
                Lost something? Report it and help others find it.
            </p>

            <p>
                Found something? Report it and help return it to the owner.
            </p>

            <!-- BUTTONS -->
            <asp:PlaceHolder ID="phReportButtons" runat="server">
                <div class="button-row">
                    <a href="ReportLost.aspx" class="button">Report Lost Item</a>
                    <a href="ReportFound.aspx" class="button">Report Found Item</a>
                </div>
                <br />
            </asp:PlaceHolder>

            <div class="button-row">
                <a href="LostItems.aspx" class="button">View Lost Items</a>
                <a href="FoundItems.aspx" class="button">View Found Items</a>
            </div>

        </div>

    </div>

</asp:Content>