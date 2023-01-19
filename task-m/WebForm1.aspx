<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_m.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:task-mConnectionString %>" SelectCommand="SELECT * FROM [manager]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="@email"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="@password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
    </form>
</body>
</html>
