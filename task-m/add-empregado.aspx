<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add-empregado.aspx.cs" Inherits="task_m.add_empregado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link rel="stylesheet" href="StyleSheet1.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:task-mConnectionString %>" SelectCommand="SELECT * FROM [empregado]"></asp:SqlDataSource>
        </div>
<div class="center">

    <asp:Label ID="Label1" runat="server" Text="Email Empregado" ForeColor="White"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


        <p>
            <asp:Label ID="Label2" runat="server" Text="Telefone Empregado"  ForeColor="White"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="NIF Empregado"  ForeColor="White"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Nivel Acesso"  ForeColor="White"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Adicionar" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="Voltar" OnClick="Button2_Click" /><br />
            <asp:Label ID="Label5" runat="server" Text="Empregado adicionado com Sucesso!" ForeColor="White"></asp:Label>
        </p>

    </div>
    </form>
</body>
</html>
