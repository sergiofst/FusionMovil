Imports System.Configuration

Namespace DAO
    Public Class ServiciosDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function GetServicio(ByVal idServicio As Integer) As DataRow
            Dim dsServicios As DataSet = GetDataSet(String.Format("SELECT idServicio, Nombre, Clase, Estatus, SRSRatingId FROM Servicios WHERE idServicio = {0}", idServicio))
            If dsServicios.Tables(0).Rows.Count > 0 Then
                Return dsServicios.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function GetServicioClaves() As DataSet
            Return GetDataSet("SELECT idServicioClave, idServicio, Clave, Estatus FROM ServicioClaves")
        End Function

        Public Function GetServicioConfiguraciones(ByVal idServicio As Integer) As DataSet
            Return GetDataSet("SELECT idServicioConfiguracion, idServicio, Clave, Valor FROM ServicioConfiguraciones WHERE idServicio = " & idServicio)
        End Function

    End Class
End Namespace

