<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditarContacto.aspx.vb" Inherits="Contactos_webform_asp_vb.EditarContacto" %>

<%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Editar Contacto</title>
    <link rel="stylesheet" href="~/Content/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />
        <div class="container mt-4">
            <h2 class="text-center mb-4">Editar Contacto</h2>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="mb-3 text-center">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 text-center">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido:" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 text-center">
                        <asp:Label ID="lblMail" runat="server" Text="Mail:" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 text-center">
                        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono:" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="btnEditar" runat="server" Text="Actualizar Contacto" CssClass="btn btn-primary fw-bold" OnClick="btnEditar_Click" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary fw-bold" PostBackUrl="~/Inicio.aspx" />
                    </div>
                </div>
            </div>
        </div>
        <uc1:Footer runat="server" ID="Footer" />
    </form>
    <script src="~/Content/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
