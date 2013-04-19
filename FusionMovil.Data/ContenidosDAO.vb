Imports MySql.Data.MySqlClient
Imports System.Text

Public Class ContenidosDAO
    Inherits BaseDAO

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function GetContenido(ByVal idContenido As Integer) As DataSet
        Dim cmd As MySqlCommand = CreateCommand()
        cmd.CommandText = "SELECT idContenido, idServicio, Nombre, Archivo, Icono, IconoDestacado, Estatus FROM Contenidos WHERE idContenido = @idContenido"
        cmd.Parameters.AddWithValue("@idContenido", idContenido)
        Return GetDataSet(cmd)
    End Function

    Public Function GetContenidosByIdCategoria(ByVal idCategoria As Integer) As DataSet
        Dim cmd As MySqlCommand = CreateCommand()
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("SELECT A.idContenido, A.idServicio, A.Nombre, A.Archivo, A.Icono, A.IconoDestacado, A.Estatus, B.idContenidoCategoria ")
            .Append("FROM Contenidos A ")
            .Append("INNER JOIN ContenidoCategorias B ON (A.idContenido = B.idContenido) ")
            .Append("WHERE B.idCategoria = @idCategoria ")
        End With
        cmd.CommandText = query.ToString
        cmd.Parameters.AddWithValue("@idCategoria", idCategoria)
        Return GetDataSet(cmd)
    End Function

    Public Function GetContenidoInfo(ByVal idContenido As Integer, ByVal estatus As Integer) As DataSet
        Return GetDataSet(String.Format("SELECT idContenidoInfo, idContenido, Etiqueta, Valor, Estatus FROM ContenidoInfo WHERE idContenido = {0} AND Estatus = {1}", idContenido, estatus))
    End Function

End Class
