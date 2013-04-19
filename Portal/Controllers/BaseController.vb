Imports MySql.Data.MySqlClient
Imports FusionMovil.Data


Namespace Controllers
    <HandleError()> _
    Public Class BaseController
        Inherits System.Web.Mvc.Controller

        Protected Function CreateConnection() As MySqlConnection
            Dim connStr As String = ConfigurationManager.ConnectionStrings("FusionMovil").ConnectionString
            Return New MySqlConnection(connStr)
        End Function

        Protected Function GetIdPortal() As Integer
            Return 1
        End Function

        Protected Function GetPortalTitle() As String
            Return "Fusion Movil"
        End Function

        Protected Function GetSuscripcion() As DataRow
            If Session("_suscripcion") Is Nothing Then
                Session("_suscripcion") = New SuscripcionesDAO(CreateConnection).FindSuscripcion(GetIdPortal(), GetTelefono)
            End If
            Return CType(Session("_suscripcion"), DataRow)
        End Function

        Protected ReadOnly Property GetTelefono() As String
            Get
                'Return Me.Request.Headers("msisdn")
                Return "8115315779"
            End Get
        End Property

        Protected ReadOnly Property SIAUser() As String
            Get
                Return ConfigurationManager.AppSettings("SIA.user")
            End Get
        End Property

        Protected ReadOnly Property SIAPassword() As String
            Get
                Return ConfigurationManager.AppSettings("SIA.password")
            End Get
        End Property

        Protected ReadOnly Property SIAHost() As String
            Get
                Return ConfigurationManager.AppSettings("SIA.host")
            End Get
        End Property

    End Class
End Namespace

