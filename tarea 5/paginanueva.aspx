<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginanueva.aspx.cs" Inherits="tarea_5.paginanueva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="Grid.css" />
    <title></title>
</head>
<body>
    <div class="row">

    </div>

    <form id="form1" runat="server">
        <div class =" row">
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtn" runat="server" OnTextChanged="txtn_TextChanged" style="margin-left: 13px"></asp:TextBox>
        </div>
        <div class="row">
        <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="txtapellido" runat="server" style="margin-left: 14px" OnTextChanged="txtapellido_TextChanged"></asp:TextBox>
       </div>
        <div class="row">
            
            <asp:Label ID="Label3" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="txtdirec" runat="server"></asp:TextBox>
            
        </div>

    </form>
 </body>
</html>
