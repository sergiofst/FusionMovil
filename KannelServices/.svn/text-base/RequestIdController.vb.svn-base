Imports MySql.Data.MySqlClient
Imports FusionMovil.Data

Namespace KannelServices
    Public Class RequestIdController
        Inherits BaseDAO
        Dim status As WTransaction.TransactionService = New WTransaction.TransactionService
        Public Sub New(ByVal dbConn As MySqlConnection)
            MyBase.New(dbConn)
        End Sub

        Public Function Prueba() As String
            Dim mycommand As MySqlCommand = New MySqlCommand
            mycommand = CreateCommand()
            mycommand.CommandText = "Select * From servicios"

            Dim texto As String
            texto = "jdnvinde"
            For Each dr As DataRow In GetDataSet(mycommand).Tables(0).Rows
                texto = CStr(dr("Nombre"))
            Next
            Return texto
        End Function









        Function Index() As String
            Return "cdsn"
        End Function

    End Class
End Namespace