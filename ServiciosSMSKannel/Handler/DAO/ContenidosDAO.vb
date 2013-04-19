Imports System.Configuration
Imports System.Data.Common

Namespace DAO
    Public Class ContenidosDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function GetContenidosByServicio(ByVal idServicio As Integer) As DataSet
            Return GetDataSet("SELECT idContenido, idServicio, nombre, Archivo, Icono, IconoDestacado, Estatus, Texto FROM Contenidos WHERE idServicio = " & idServicio)
        End Function

        Public Function GetContenidoClaves() As DataSet
            Return GetDataSet("SELECT idContenidoClave, idContenido, idMedio, Clave, Estatus FROM ContenidoClaves")
        End Function

        Public Function GetContenido(ByVal idContenido As Integer) As DataRow
            Return GetDataSet("SELECT idContenido, idServicio, nombre, Archivo, Icono, IconoDestacado, Estatus, Texto FROM Contenidos WHERE idContenido = " & idContenido).Tables(0).Rows(0)
        End Function

        Public Function GetContenidoByClave(ByVal NombreClave As String) As Integer
            Dim mycommand As DbCommand = CreateCommand()
            mycommand.CommandText = "Select idContenidoClave, idContenido, idMedio, Clave, Estatus From contenidoclaves"
            Dim ds As DataSet = GetDataSet(mycommand)
            Dim idContenido As Integer = Nothing
            For Each dr As DataRow In ds.Tables(0).Rows
                If NombreClave.ToString.IndexOf(CStr(dr("Clave"))) > -1 Then
                    idContenido = CInt(dr("idContenido"))
                End If
            Next
            Return idContenido
        End Function

    End Class
End Namespace

