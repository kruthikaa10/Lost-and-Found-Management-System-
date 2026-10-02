<%@ Page Title="Register"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="LostAndFound.Register" %>

<asp:Content
    ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Register</h2>

    <p>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ForeColor="Red" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic"></asp:RegularExpressionValidator>
    </p>

    <p>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p>
        <asp:Label ID="lblUserType" runat="server" Text="User Type"></asp:Label>
        <br />

        <asp:DropDownList ID="ddlUserType" runat="server">
            <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
            <asp:ListItem Text="Staff" Value="Staff"></asp:ListItem>
        </asp:DropDownList>
    </p>

    <p>
        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register"
            OnClick="btnRegister_Click" />
    </p>

    <asp:Label
        ID="lblMessage"
        runat="server">
    </asp:Label>

</asp:Content>