Imports System.Data.Common

Namespace DAO
    Public Class ContentDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function GetContent(ByVal idContent As Integer) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT idContent, Name, Description, File, Type, Status FROM FMP_Content WHERE idContent = @idContent"
            cmd.Parameters.Add(AddWithValue("@idContent", idContent, DbType.Int32))
            Dim dsResult As DataSet = GetDataSet(cmd)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function GetCategory(ByVal idCategory As Integer) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT idCategory, Name, Description, Status FROM FMP_Category WHERE idCategory = @idCategory"
            cmd.Parameters.Add(AddWithValue("@idCategory", idCategory, DbType.Int32))
            Dim dsResult As DataSet = GetDataSet(cmd)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function GetContentType(ByVal idContentType As ContentType) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT idContentType, Name, Description, Path, Estatus FROM FMP_ContentType WHERE idContentType = @idContentType"
            cmd.Parameters.Add(AddWithValue("@idContentType", CInt(idContentType), DbType.Int32))
            Dim dsResult As DataSet = GetDataSet(cmd)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function ListContentByIdCategory(ByVal idCategory As Integer) As DataSet
            Dim cmd As DbCommand = CreateCommand()
            Dim query As StringBuilder = New StringBuilder
            With query
                .Append("SELECT A.idContent, A.Name, A.Description,  A.File, A.idContentType, A.Status, ")
                .Append("C.Path ")
                .Append("FROM FMP_Content AS A ")
                .Append("INNER JOIN FMP_ContentCategory AS B ON (A.idContent = B.idContent) ")
                .Append("INNER JOIN FMP_ContentType AS C ON (A.idContentType = C.idContentType) ")
                .Append("WHERE B.idCategory = @idCategory")
            End With
            cmd.CommandText = query.ToString
            cmd.Parameters.Add(AddWithValue("@idCategory", idCategory, DbType.Int32))
            Return GetDataSet(cmd)
        End Function

        Public Enum ContentType
            Fondo = 1
        End Enum

    End Class
End Namespace

