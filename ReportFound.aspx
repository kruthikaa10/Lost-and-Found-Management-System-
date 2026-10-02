<%@ Page Title="Report Found Item" Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ReportFound.aspx.cs"
    Inherits="LostAndFound.ReportFound" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Report Found Item</h2>

    <p>
        <asp:Label ID="lblItemName" runat="server" Text="Item Name"></asp:Label><br />
        <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvItemName" runat="server" ControlToValidate="txtItemName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label><br />
        <asp:DropDownList ID="ddlCategory" runat="server">
            <asp:ListItem Text="-- Select Category --" Value=""></asp:ListItem>
            <asp:ListItem Text="Electronics" Value="Electronics"></asp:ListItem>
            <asp:ListItem Text="Documents" Value="Documents"></asp:ListItem>
            <asp:ListItem Text="Clothing" Value="Clothing"></asp:ListItem>
            <asp:ListItem Text="Accessories" Value="Accessories"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label><br />
        <asp:TextBox ID="txtDescription" runat="server"
            TextMode="MultiLine" Rows="4" Columns="40"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblLocation" runat="server" Text="Location Found"></asp:Label><br />
        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblDate" runat="server" Text="Date Found"></asp:Label><br />
        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label><br />
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Button ID="btnReportFound" runat="server"
            Text="Report Found Item"
            OnClick="btnReportFound_Click" />
    </p>

    <asp:Label ID="lblMessage" runat="server"></asp:Label>

</asp:Content>