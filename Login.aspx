<%@ Page Title="Login"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="LostAndFound.Login" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <h2>Login</h2>

        <asp:Label ID="lblEmail"
            runat="server"
            Text="Email:">
        </asp:Label>

        <br />

        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>

        <br />

        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        <asp:Button ID="btnLogin"
            runat="server"
            Text="Login"
            OnClick="btnLogin_Click"
            CssClass="button" />

        <br /><br />

        <asp:Label ID="lblMessage"
            runat="server">
        </asp:Label>

    </div>

</asp:Content>