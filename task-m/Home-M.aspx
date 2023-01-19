<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home-M.aspx.cs" Inherits="task_m.Home_M" %>

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

            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Empregados" Width="142px" />

            
        </div>
        <asp:Button ID="Button2" runat="server" Text="Tarefas" Width="142px" OnClick="Button2_Click" />

    </form>
</body>
</html>
