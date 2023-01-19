<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tarefas.aspx.cs" Inherits="task_m.tarefas" %>

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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:task-mConnectionString %>" 
                SelectCommand="SELECT * FROM [tarefa]"
                DeleteCommand="DELETE FROM tarefa WHERE id_tarefa=@id_tarefa"
                    UpdateCommand="UPDATE [tarefa] SET [id_manager] = @id_manager, [id_empregado]=@id_empregado, [estado_tarefa]=@estado_tarefa,[desc_tarefa]=@desc_tarefa"
                ></asp:SqlDataSource>
            <p style="text-align:center; color:white;">Lista de Tarefas</p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tarefa" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id_tarefa" HeaderText="ID Tarefa" InsertVisible="False" ReadOnly="True" SortExpression="id_tarefa" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" >
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="id_manager" HeaderText="ID Manager" SortExpression="id_manager"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="id_empregado" HeaderText="ID Empregado" SortExpression="id_empregado"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="estado_tarefa" HeaderText="Estado Tarefa" SortExpression="estado_tarefa"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="data_inicio" HeaderText="Data de Início" SortExpression="data_inicio"  HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="data_fim" HeaderText="Data de Fim" SortExpression="data_fim" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" >
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="desc_tarefa" HeaderText="Desc. Tarefa" SortExpression="desc_tarefa" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" >
<HeaderStyle ForeColor="White"></HeaderStyle>

<ItemStyle ForeColor="White"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" HeaderStyle-ForeColor="White" ItemStyle-ForeColor="White" />
            </Columns>
        </asp:GridView>
        <div class="center">
        <asp:Button ID="Button1" runat="server" Text="Adicionar Tarefa" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Voltar!" OnClick="Button2_Click" />
            </div>
    </form>
</body>
</html>
