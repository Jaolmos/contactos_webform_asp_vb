Public Class EditarContacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim id As Integer
            If Integer.TryParse(Request.QueryString("id"), id) Then
                CargarDatosContacto(id)
            Else
                Response.Redirect("~/Inicio.aspx")
            End If
        End If
    End Sub

    Private Sub CargarDatosContacto(id As Integer)
        Dim contacto As ContactoDTO = ContactoDAL.ObtenerContactoPorId(id)
        If contacto IsNot Nothing Then
            txtNombre.Text = contacto.Nombre
            txtApellido.Text = contacto.Apellido
            txtMail.Text = contacto.Mail
            txtTelefono.Text = contacto.Telefono
        Else
            Response.Redirect("~/Inicio.aspx")
        End If
    End Sub

    Protected Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEditar.Click
        Dim contacto As New ContactoDTO()
        contacto.Id = Convert.ToInt32(Request.QueryString("id"))
        contacto.Nombre = txtNombre.Text
        contacto.Apellido = txtApellido.Text
        contacto.Mail = txtMail.Text
        contacto.Telefono = txtTelefono.Text

        ContactoDAL.EditarContacto(contacto)

        Response.Redirect("~/Inicio.aspx")
    End Sub
End Class