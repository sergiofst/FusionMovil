Imports FusionMovil.Data

Namespace Controllers
    <AttributeUsage(AttributeTargets.All)> _
    Public Class ValidaCreditosAttribute
        Inherits ActionFilterAttribute

        Private m_idPortal As Integer
        Private m_telefono As String

        Public Sub New(ByVal idPortal As Integer, ByVal telefono As String)
            m_idPortal = idPortal
            m_telefono = telefono
        End Sub

        Public Overrides Sub OnActionExecuted(ByVal filterContext As System.Web.Mvc.ActionExecutedContext)
            MyBase.OnActionExecuted(filterContext)

            ' Verifico los creditos del cliente

        End Sub

        Private Function GetSuscripcion() As DataRow
            Return Nothing
        End Function

    End Class
End Namespace

