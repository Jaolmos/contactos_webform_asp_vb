Imports System.Data.SqlClient

Public Class ContactoDAL

    Public Shared Function ObtenerTodosLosContactos() As List(Of ContactoDTO)
        Dim listaContactos As New List(Of ContactoDTO)()
        Try
            Using conexion As SqlConnection = ConexionBD.ObtenerConexion()
                conexion.Open()
                Dim consulta As String = "SELECT Id, Nombre, Apellido, Mail, Telefono FROM Contactos"
                Dim comando As New SqlCommand(consulta, conexion)
                Using reader As SqlDataReader = comando.ExecuteReader()
                    While reader.Read()
                        Dim contacto As New ContactoDTO() With {
                        .Id = Convert.ToInt32(reader("Id")),
                        .Nombre = reader("Nombre").ToString(),
                        .Apellido = reader("Apellido").ToString(),
                        .Mail = If(reader.IsDBNull(reader.GetOrdinal("Mail")), Nothing, reader("Mail").ToString()),
                        .Telefono = If(reader.IsDBNull(reader.GetOrdinal("Telefono")), Nothing, reader("Telefono").ToString())
                    }
                        listaContactos.Add(contacto)
                    End While
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception($"Error al obtener contactos: {ex.Message}")
        End Try
        Return listaContactos
    End Function


    Public Shared Sub AgregarContacto(contacto As ContactoDTO)
        Try
            Using conexion As SqlConnection = ConexionBD.ObtenerConexion()
                conexion.Open()
                Dim consulta As String = "INSERT INTO Contactos (Nombre, Apellido, Mail, Telefono) VALUES (@Nombre, @Apellido, @Mail, @Telefono)"

                Using comando As New SqlCommand(consulta, conexion)
                    With comando
                        .Parameters.AddWithValue("@Nombre", contacto.Nombre)
                        .Parameters.AddWithValue("@Apellido", contacto.Apellido)
                        .Parameters.AddWithValue("@Mail", contacto.Mail)
                        .Parameters.AddWithValue("@Telefono", contacto.Telefono)
                        .ExecuteNonQuery()
                    End With
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception($"Error al agregar contacto: {ex.Message}")
        End Try
    End Sub


    Public Shared Sub EditarContacto(contacto As ContactoDTO)
        Try
            Using conexion As SqlConnection = ConexionBD.ObtenerConexion()
                conexion.Open()
                Dim consulta As String = "UPDATE Contactos SET Nombre = @Nombre, Apellido = @Apellido, Mail = @Mail, Telefono = @Telefono WHERE Id = @Id"

                Using comando As New SqlCommand(consulta, conexion)
                    With comando
                        .Parameters.AddWithValue("@Id", contacto.Id)
                        .Parameters.AddWithValue("@Nombre", contacto.Nombre)
                        .Parameters.AddWithValue("@Apellido", contacto.Apellido)
                        .Parameters.AddWithValue("@Mail", contacto.Mail)
                        .Parameters.AddWithValue("@Telefono", contacto.Telefono)
                        .ExecuteNonQuery()
                    End With
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception($"Error al editar contacto: {ex.Message}")
        End Try
    End Sub



    Public Shared Sub EliminarContacto(id As Integer)
        Try
            Using conexion As SqlConnection = ConexionBD.ObtenerConexion()
                conexion.Open()
                Dim comando As New SqlCommand("DELETE FROM Contactos WHERE Id = @Id", conexion)
                comando.Parameters.AddWithValue("@Id", id)
                comando.ExecuteNonQuery()
            End Using
        Catch ex As Exception
            Throw New Exception("Error al eliminar contacto.")
        End Try
    End Sub

    Public Shared Function ObtenerContactoPorId(id As Integer) As ContactoDTO
        Dim contacto As ContactoDTO = Nothing
        Try
            Using conexion As SqlConnection = ConexionBD.ObtenerConexion()
                conexion.Open()
                Dim consulta As String = "SELECT Id, Nombre, Apellido, Mail, Telefono FROM Contactos WHERE Id = @Id"
                Using comando As New SqlCommand(consulta, conexion)
                    comando.Parameters.AddWithValue("@Id", id)
                    Using reader As SqlDataReader = comando.ExecuteReader()
                        If reader.Read() Then
                            contacto = New ContactoDTO() With {
                                .Id = Convert.ToInt32(reader("Id")),
                                .Nombre = reader("Nombre").ToString(),
                                .Apellido = reader("Apellido").ToString(),
                                .Mail = If(reader.IsDBNull(reader.GetOrdinal("Mail")), Nothing, reader("Mail").ToString()),
                                .Telefono = If(reader.IsDBNull(reader.GetOrdinal("Telefono")), Nothing, reader("Telefono").ToString())
                            }
                        End If
                    End Using
                End Using
            End Using
        Catch ex As Exception
            Throw New Exception($"Error al obtener el contacto con ID {id}: {ex.Message}")
        End Try
        Return contacto
    End Function


End Class
