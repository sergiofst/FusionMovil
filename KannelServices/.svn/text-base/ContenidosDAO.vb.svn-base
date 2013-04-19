Imports MySql.Data.MySqlClient
Imports System.Text
Imports FusionMovil.Data

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

    Public Function InsertarContenido(ByVal idcontenido As Integer, ByVal idservicio As Integer, ByVal Nombre As String, ByVal Estatus As Integer) As Object
        Dim mycommand As MySqlCommand = CreateCommand()
        'Dim result As DataSet = New DataSet()
        mycommand.CommandText = "INSERT INTO Contenidos(idContenido, idServicio, Nombre, Estatus) VALUES(@idContenido, @idServicio, @Nombre, @Estatus)"
        Dim ejecuta As Integer
        With mycommand.Parameters
            .AddWithValue("@idContenido", idcontenido)
            .AddWithValue("@idServicio", idservicio)
            .AddWithValue("@Nombre", Nombre)
            .AddWithValue("@Estatus", Estatus)
        End With
        For Each dr As DataRow In GetDataSet(mycommand).Tables("0").Rows
            If idcontenido.ToString.IndexOf(CStr(dr("idContenido"))) > -1 Then
                ejecuta = 0
            End If
        Next
        'ExecuteNonQuery(mycommand)
        If ejecuta = 0 Then
            Return ExecuteNonQuery(mycommand)
        Else
            Exit Function
            Return Nothing
        End If
    End Function

    Public Function GetDataSetIDpendiente() As DataSet
        Dim ds As DataSet
        Dim query As String
        Dim da As MySqlDataAdapter = New MySqlDataAdapter
        query = String.Format("SELECT * FROM IDpendiente WHERE Estado = 'P'")
        ds = GetDataSet(query)
        Return ds
    End Function

    Protected Function ExecuteNon_Query(ByVal query As String, dbconn As MySqlConnection) As Object
        dbconn.Open()
        Dim result As Object = Nothing
        Dim cmd As MySqlCommand = dbconn.CreateCommand
        cmd.CommandText = query
        result = cmd.ExecuteNonQuery
        dbconn.Close()
        Return result
    End Function

    Protected Function ExecuteNon_Query(ByVal cmd As MySqlCommand, ByVal dbconn As MySqlConnection) As Object
        dbconn.Open()
        Dim result As Object = Nothing
        result = cmd.ExecuteNonQuery
        dbconn.Close()
        Return result
    End Function

End Class
