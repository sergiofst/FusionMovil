Imports MySql.Data.MySqlClient

Public Class ServiciosDAO
    Inherits BaseDAO

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function GetServicio(ByVal idServicio As Integer) As DataSet
        Return GetDataSet(String.Format("SELECT idServicio, Nombre, SRSRatingId, PrecioCreditos, Estatus FROM Servicios WHERE idServicio = {0}", idServicio))
    End Function
End Class
