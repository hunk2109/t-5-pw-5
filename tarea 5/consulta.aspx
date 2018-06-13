<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="tarea_5.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type ="text/css" href="Grid.css"
    <title></title>
    <style type="text/css">
        #form1 {
            height: 166px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <asp:Label ID="Label1" runat="server" Text="Buscar"></asp:Label>
            <asp:DropDownList ID="ddlb" runat="server" Width="357px">
                <asp:ListItem Value="u_id">ID</asp:ListItem>
                <asp:ListItem Value="direcccion">Direcccion</asp:ListItem>
                <asp:ListItem Value="nombre">Nombre</asp:ListItem>
                <asp:ListItem Value="apellido">Apellido</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtb" runat="server" style="margin-left: 6px" Width="265px"></asp:TextBox>
            <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
        </div>
        <asp:GridView ID="gvm" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvm_SelectedIndexChanged" Width="667px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:t6ConnectionString %>" SelectCommand="select u_id as 'ID', nombre as 'Nombre', apellido as 'Apellido', direccion as 'Direccion' from usuario"></asp:SqlDataSource>
    </form>
</body>
</html>
