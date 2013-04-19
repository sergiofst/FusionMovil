Imports ServiciosSMSKannel.Utils

Public Class SuscripcionNoAceptada
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim idSuscripcion As Integer = Request("idSuscripcion")
        Dim daoSuscripciones As SuscripcionesDAO = New SuscripcionesDAO(GetConnectionString)
        daoSuscripciones.UpdateEstatusSuscripcion(idSuscripcion, 4)

        Dim senderKannel As KannelSMSSender = New KannelSMSSender
        senderKannel.Send("47744", "5654654", "Upssss", "Telcel47774", Nothing)
    End Sub

    Private Function GetConnectionString() As ConnectionStringSettings
        Return ConfigurationManager.ConnectionStrings(Constantes.CONN_STR_KEY)
    End Function

End Class