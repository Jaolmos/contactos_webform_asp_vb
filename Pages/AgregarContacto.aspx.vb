Public Class AgregarContacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        Dim nuevoContacto As New ContactoDTO()
        nuevoContacto.Nombre = txtNombre.Text
        nuevoContacto.Apellido = txtApellido.Text
        nuevoContacto.Mail = txtMail.Text
        nuevoContacto.Telefono = txtTelefono.Text

        ContactoDAL.AgregarContacto(nuevoContacto)

        Response.Redirect("~/Inicio.aspx")
    End Sub

End Class
