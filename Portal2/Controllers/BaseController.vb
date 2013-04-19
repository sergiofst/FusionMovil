<HandleError()> _
Public Class BaseController
    Inherits System.Web.Mvc.Controller

    Protected Function GetConnectionString() As ConnectionStringSettings
        Return ConfigurationManager.ConnectionStrings("FusionMovil")
    End Function

    Protected Function GetPortalTitle() As String
        Return "Fusion Movil"
    End Function

    Protected ReadOnly Property GetTelefono() As String
        Get
            If Not String.IsNullOrEmpty(ConfigurationManager.AppSettings("PROTGT.TestTelefono")) Then
                Return ConfigurationManager.AppSettings("PROTGT.TestTelefono")
            End If
            Return Me.Request.Headers(ConfigurationManager.AppSettings("SIA.MSISDN"))
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
