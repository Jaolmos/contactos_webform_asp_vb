Imports System.IO

Public Class Inicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarContactos()
        End If
    End Sub

    Private Sub CargarContactos()
        Dim contactos As List(Of ContactoDTO) = ContactoDAL.ObtenerTodosLosContactos()
        GridViewContactos.DataSource = contactos
        GridViewContactos.DataBind()
    End Sub

    Protected Sub btnNuevoContacto_Click(sender As Object, e As EventArgs) Handles btnNuevoContacto.Click
        Response.Redirect("~/Pages/AgregarContacto.aspx")
    End Sub

    Protected Sub lnkBorrar_Click(sender As Object, e As EventArgs)
        Dim lnkButton As LinkButton = DirectCast(sender, LinkButton)

        Dim id As Integer = Convert.ToInt32(lnkButton.CommandArgument)

        ContactoDAL.EliminarContacto(id)

        CargarContactos()
    End Sub

    Protected Sub btnExportarXML_Click(sender As Object, e As EventArgs) Handles btnExportarXML.Click
        Dim contactos As List(Of ContactoDTO) = ContactoDAL.ObtenerTodosLosContactos()
        Dim rutaArchivo As String = Server.MapPath("~/Exportados/Contactos_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".xml")

        If Not Directory.Exists(Server.MapPath("~//")) Then
            Directory.CreateDirectory(Server.MapPath("~/Exportados/"))
        End If

        ContactoXMLManager.ExportarContactosXML(contactos, rutaArchivo)

        Response.Clear()
        Response.ContentType = "text/xml"
        Response.AddHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(rutaArchivo))
        Response.WriteFile(rutaArchivo)
        Response.End()
    End Sub

    ' Paginación
    Protected Sub GridViewContactos_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridViewContactos.PageIndex = e.NewPageIndex
        CargarContactos()
    End Sub

End Class