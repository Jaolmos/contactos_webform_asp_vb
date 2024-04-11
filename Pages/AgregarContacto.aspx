<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarContacto.aspx.vb" Inherits="Contactos_webform_asp_vb.AgregarContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" Width="212px"></asp:TextBox>
            <br />
            <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" Width="206px"></asp:TextBox>
            <br />
            <asp:Label ID="lblMail" runat="server" Text="Mail:"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server" Width="222px"></asp:TextBox>
            <br />
            <asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server" Width="189px"></asp:TextBox>
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Contacto"/>

        </div>
    </form>
</body>
</html>
