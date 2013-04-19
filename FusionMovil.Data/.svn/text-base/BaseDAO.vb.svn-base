Imports MySql.Data.MySqlClient

Public MustInherit Class BaseDAO
    Private m_dbConn As MySqlConnection

    Public Sub New(ByVal dbConn As MySqlConnection)
        m_dbConn = dbConn
    End Sub

    Protected Function CreateCommand() As MySqlCommand
        Return m_dbConn.CreateCommand
    End Function

    Protected Function GetDataSet(ByVal query As String) As DataSet
        m_dbConn.Open()
        Dim dAdapter As MySqlDataAdapter = New MySqlDataAdapter(query, m_dbConn)
        Dim result As DataSet = New DataSet
        dAdapter.Fill(result, 0)
        m_dbConn.Close()
        Return result
    End Function

    Protected Function GetDataSet(ByVal cmd As MySqlCommand) As DataSet
        m_dbConn.Open()
        Dim dAdapter As MySqlDataAdapter = New MySqlDataAdapter(cmd)
        Dim result As DataSet = New DataSet
        dAdapter.Fill(result, 0)
        m_dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQuery(ByVal query As String) As Object
        m_dbConn.Open()
        Dim result As Object = Nothing
        Dim cmd As MySqlCommand = m_dbConn.CreateCommand
        cmd.CommandText = query
        result = cmd.ExecuteNonQuery
        m_dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQuery(ByVal cmd As MySqlCommand) As Object
        m_dbConn.Open()
        Dim result As Object = Nothing
        result = cmd.ExecuteNonQuery
        m_dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteNonQueryIdentity(ByVal cmd As MySqlCommand) As Integer
        m_dbConn.Open()
        Dim result As Integer = -1
        cmd.ExecuteNonQuery()
        cmd.CommandText = "SELECT LAST_INSERT_ID()"
        result = cmd.ExecuteScalar
        m_dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteScalar(ByVal cmd As MySqlCommand) As Integer
        m_dbConn.Open()
        Dim result As Integer = -1
        result = cmd.ExecuteScalar
        m_dbConn.Close()
        Return result
    End Function

    Protected Function ExecuteScalar(ByVal query As String) As Integer
        m_dbConn.Open()
        Dim result As Integer = -1
        Dim cmd As MySqlCommand = m_dbConn.CreateCommand
        cmd.CommandText = query
        result = cmd.ExecuteScalar
        m_dbConn.Close()
        Return result
    End Function

End Class
