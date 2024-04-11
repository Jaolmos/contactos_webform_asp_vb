<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Header.ascx.vb" Inherits="Contactos_webform_asp_vb.Header" %>
<link rel="stylesheet" href="~/Content/bootstrap/css/bootstrap.min.css" />
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Contactos</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <asp:HyperLink ID="HyperLinkInicio" runat="server" NavigateUrl="~/Inicio.aspx" CssClass="nav-link">Inicio</asp:HyperLink>
        </li>
        <li class="nav-item">
          <asp:HyperLink ID="HyperLinkAgregarLibro" runat="server" NavigateUrl="~/Pages/AgregarContacto.aspx" CssClass="nav-link">Nuevo Contacto</asp:HyperLink>
        </li>
      </ul>
    </div>
  </div>
</nav>
