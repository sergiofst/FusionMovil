Imports System.Data.Common

Namespace DAO
    Public Class MenuDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function GetMenu(ByVal idMenu As Integer) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT idMenu, idParent, Name, Description, Type, Url, idCategory, Status FROM FMP_Menu WHERE idMenu = @idMenu"
            cmd.Parameters.Add(AddWithValue("@idMenu", idMenu, DbType.Int32))
            Dim dsResult As DataSet = GetDataSet(cmd)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function ListMenuByIdParent(ByVal idParent As Integer) As DataSet
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT idMenu, idParent, Name, Description, Type, Url,idCategory, Status FROM FMP_Menu WHERE idParent = @idParent"
            cmd.Parameters.Add(AddWithValue("@idParent", idParent, DbType.Int32))
            Return GetDataSet(cmd)
        End Function

        Public Enum MenuType
            MenuItem
            ContentCategoryList
            Link
        End Enum

    End Class
End Namespace

