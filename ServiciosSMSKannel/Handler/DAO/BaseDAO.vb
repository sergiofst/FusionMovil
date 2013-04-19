Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Configuration


Public MustInherit Class BaseDAO
    Private m_connString As ConnectionStringSettings
    Private m_dataProvider As DbProviderFactory
    Private m_dbConn As DbConnection

    Public Sub New(ByVal connStr As ConnectionStringSettings)
        m_connString = connStr
        m_dataProvider = DbProviderFactories.GetFactory(m_connString.ProviderName)
    End Sub

    Protected Function CreateCommand() As DbCommand
        Return m_dataProvider.CreateCommand
    End Function

    Private Function CreateConnection() As DbConnection
        If m_dbConn Is Nothing Then
            m_dbConn = m_dataProvider.CreateConnection
        End If
        m_dbConn.ConnectionString = m_connString.ConnectionString
        Return m_dbConn
    End Function

    Protected Function GetDataSet(ByVal query As String) As DataSet
        Dim dbConn As DbConnection = CreateConnection()
        Dim dAdapter As DbDataAdapter = GetDataAdapter(query, dbConn)
        Dim result As DataSet = New DataSet
        dAdapter.Fill(result)
        dbConn.Close()
        Return result
    End Function

    Protected Function GetDataSet(ByVal cmd As DbCommand) As DataSet
        Dim dbConn As DbConnection = CreateConnection()
        Dim dAdapter As DbDataAdapter = GetDataAdapter(cmd)
        Dim result As DataSet = New DataSet
        cmd.Connection = dbConn
        dAdapter.Fill(result)
        dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQuery(ByVal query As String) As Object
        Dim dbConn As DbConnection = CreateConnection()
        Dim result As Object = Nothing
        Dim cmd As DbCommand = CreateCommand()
        cmd.CommandText = query
        cmd.Connection = dbConn
        dbConn.Open()
        result = cmd.ExecuteNonQuery
        dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQuery(ByVal cmd As DbCommand) As Object
        Dim dbConn As DbConnection = CreateConnection()
        Dim result As Object = Nothing
        result = cmd.ExecuteNonQuery
        dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQueryIdentity(ByVal cmd As DbCommand) As Integer
        Dim dbConn As DbConnection = CreateConnection()
        Dim result As Integer = -1
        cmd.Connection = dbConn
        dbConn.Open()
        cmd.ExecuteNonQuery()
        ' TODO No se como sacar el autoincrement de cualquier base de datos
        'cmd.CommandText = "SELECT LAST_INSERT_ID()"
        cmd.CommandText = "SELECT LAST_INSERT_ROWID()"

        result = CInt(cmd.ExecuteScalar)
        dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteScalar(ByVal cmd As DbCommand) As Integer
        Dim dbConn As DbConnection = CreateConnection()
        Dim result As Integer = -1
        cmd.Connection = dbConn
        dbConn.Open()
        result = CInt(cmd.ExecuteScalar)
        dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteScalar(ByVal query As String) As Integer
        Dim dbConn As DbConnection = CreateConnection()
        Dim result As Integer = -1
        Dim cmd As DbCommand = dbConn.CreateCommand
        dbConn.Open()
        cmd.CommandText = query
        result = CInt(cmd.ExecuteScalar)
        dbConn.Close()
        Return result
    End Function

    Private Function GetDataAdapter(ByVal query As String, ByVal dbConn As DbConnection) As DbDataAdapter
        Dim dAdapter As DbDataAdapter = m_dataProvider.CreateDataAdapter
        Dim dbComm As DbCommand = dbConn.CreateCommand
        dbComm.CommandText = query
        dAdapter.SelectCommand = dbComm
        Return dAdapter
    End Function

    Private Function GetDataAdapter(ByVal cmd As DbCommand) As DbDataAdapter
        Dim dAdapter As DbDataAdapter = m_dataProvider.CreateDataAdapter
        dAdapter.SelectCommand = cmd
        Return dAdapter
    End Function

    Protected Function AddWithValue(ByVal key As String, ByVal value As Object) As DbParameter
        Dim param As DbParameter = m_dataProvider.CreateParameter()
        param.ParameterName = key
        param.Value = value
        Return param
    End Function

End Class
