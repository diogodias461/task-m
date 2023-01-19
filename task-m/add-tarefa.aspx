<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add-tarefa.aspx.cs" Inherits="task_m.add_tarefa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="StyleSheet1.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
            #TextArea1 {
                height: 94px;
                width: 266px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <p runat="server" style="text-align:center; color:white;">
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:task-mConnectionString %>" 
                   SelectCommand="SELECT * FROM [tarefa]" 
                   InsertCommand="INSERT INTO [tarefa] ([id_tarefa][id_manager],[id_empregado],[estado_tarefa],[data_inicio],[data_fim],[desc_tarefa]) VALUES (@id_tarefa,@id_manager,@id_empregado,@estado_tarefa,@data_inicio,@data_fim,@desc_tarefa)"></asp:SqlDataSource>
               Adicionar Tarefa!</p>
        </div>
        <div style="color:white">
            
            
            <asp:Label ID="Label1" runat="server" Text="Manager"></asp:Label>
            <select id="Select1" name="D1" runat="server">
                <option></option>
            </select></div>
        <div style="color:white">
        <asp:Label ID="Label2" runat="server" Text="Empregado"></asp:Label>
        <select id="Select2" name="D2" runat="server">
            <option></option>
        </select><p>
            <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Data de Início" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        </p>
            <p>
            <asp:Label ID="Label6" runat="server" Text="Data de Fim" ></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Descrição da Tarefa"></asp:Label>
        <textarea id="TextArea1" name="S1" runat="server"></textarea></div>
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar Tarefa!" />
        <asp:Label ID="Label8" runat="server" Text="Tarefa Adicionada Com Sucesso!" ForeColor="White"></asp:Label>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar" />
        </p>
    </form>
    </body>
</html>
