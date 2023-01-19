<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empregados.aspx.cs" Inherits="task_m.empregados" %>

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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:task-mConnectionString %>" 
            SelectCommand="SELECT * FROM [empregado]"
            DeleteCommand="DELETE FROM empregado Where id_empregado = @id_empregado"
            UpdateCommand="UPDATE [empregado] SET [email_empregado]=@email_empregado,[telef_empregado]=@telef_empregado,[nif_empregado]=@nif_empregado,[nivel_acesso]=@nivel_acesso"
            ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_empregado" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id_empregado" HeaderText="ID Empregado" InsertVisible="False" ReadOnly="True" SortExpression="id_empregado"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" />
                <asp:BoundField DataField="email_empregado" HeaderText="Email Empregado" SortExpression="email_empregado" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" />
                <asp:BoundField DataField="telef_empregado" HeaderText="Telef. Empregado" SortExpression="telef_empregado" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" />
                <asp:BoundField DataField="nif_empregado" HeaderText="NIF Empregado" SortExpression="nif_empregado"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White"/>
                <asp:BoundField DataField="nivel_acesso" HeaderText="Nível de Acesso" SortExpression="nivel_acesso"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White"/>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White"/>
            </Columns>
        </asp:GridView>
        <div class="center">
        <asp:Button ID="Button1" runat="server" Text="Adicionar Empregado" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Voltar!" OnClick="Button2_Click" />
            </div>
    </form>
</body>
</html>
