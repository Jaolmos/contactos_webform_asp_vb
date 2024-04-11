<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Contactos_webform_asp_vb.Inicio" %>

<%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
    <link rel="stylesheet" href="~/Content/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header runat="server" id="Header" />
        <div class="container mt-2">
            <h2 class="text-center mb-4">Lista de Contactos</h2>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end mb-3">
                <asp:Button ID="btnNuevoContacto" CssClass="btn btn-primary me-md-2" runat="server" Text="Nuevo Contacto" />
                <asp:Button ID="btnExportarXML" CssClass="btn btn-secondary" runat="server" Text="Exportar XML" />
            </div>

            <div class="table-responsive">
                <asp:GridView ID="GridViewContactos" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered text-center">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" />
                        <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />

                        <asp:TemplateField HeaderText="Acción">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlEditar" CssClass="btn btn-info me-1" runat="server"
                                    NavigateUrl='<%# "/Pages/EditarContacto.aspx?id=" + Convert.ToString(Eval("Id")) %>' Text="Editar"></asp:HyperLink>

                                <asp:LinkButton ID="lnkBorrar" CssClass="btn btn-danger" runat="server" CommandArgument='<%# Eval("Id") %>'
                                    Text="Eliminar" OnClick="lnkBorrar_Click"
                                    OnClientClick="return confirm('¿Estás seguro de querer borrar este contacto?');">
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <uc1:Footer runat="server" ID="Footer" />
    </form>
    <script src="~/Content/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
