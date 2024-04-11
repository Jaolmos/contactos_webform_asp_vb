Imports System.Xml.Serialization
Imports System.IO
Imports System.Collections.Generic

Public Class ContactoXMLManager

    ' Serializa la lista de contactos en un archivo XML
    Public Shared Sub ExportarContactosXML(contactos As List(Of ContactoDTO), rutaArchivo As String)
        Dim serializador As New XmlSerializer(GetType(List(Of ContactoDTO)))
        Using writer As New StreamWriter(rutaArchivo)
            serializador.Serialize(writer, contactos)
        End Using
    End Sub

End Class
