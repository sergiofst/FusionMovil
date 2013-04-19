Imports FusionMovil.Data

Namespace Controllers
    Public Class SuscripcionesController
        Inherits BaseController

        ' id - idSuscripcion
        Public Function Delete(ByVal id As Integer) As String
            Dim result As Integer = New SuscripcionesDAO(CreateConnection).UpdateEstatusSuscripcion(id, 0)
            Return "OK"
        End Function

        ' id - Contenido
        Public Function Nueva() As ActionResult
            Return View()
        End Function

        Public Function NuevaConfirmar() As ActionResult
            Return View()
        End Function

    End Class
End Namespace

