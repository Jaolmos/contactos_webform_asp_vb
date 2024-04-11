<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Contactos_webform_asp_vb.Inicio" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
    
</head>
<body>
    <form id="form1" runat="server">
       >
        <div class="container mt-2">
            <div>
                <div>
                    <asp:Button ID="btnNuevoContacto" runat="server" Text="Nuevo Contacto" />
                </div>

                <div>
                    <asp:GridView ID="GridViewContactos" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                            <asp:BoundField DataField="Mail" HeaderText="Mail" />
                            <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />

                            <asp:TemplateField HeaderText="Acción">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hlEditar" CssClass="btn btn-info" runat="server"
                                        NavigateUrl='<%# "/Pages/EditarContacto.aspx?id=" + Convert.ToString(Eval("Id")) %>' Text="Editar"></asp:HyperLink>

                                    <asp:LinkButton ID="lnkBorrar" runat="server" CommandArgument='<%# Eval("Id") %>'
                                        Text="Eliminar" OnClick="lnkBorrar_Click"
                                        OnClientClick="return confirm('¿Estás seguro de querer borrar este contacto?');">
                                    </asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>

            </div>
            <div>
                <asp:Button ID="btnExportarXML" runat="server" Text="Exportar XML" />
            </div>
        </div>
        
        </form>
    
</body>
</html>
