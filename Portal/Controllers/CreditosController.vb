Namespace Controllers
    Public Class CreditosController
        Inherits BaseController

        ' id - idContenido
        Public Function Index(ByVal id As Integer) As ActionResult
            ' Le aviso que no tiene creditos, le pregunto si quiere comprar mas creditos,
            ' Al confirmar que si quiere mas creditos lo regreso a la pantalla de Buy
            ViewData("idContenido") = id
            Return View()
        End Function

        Public Function Comprar(ByVal id As Integer) As ActionResult
            ' 
            Return View()
        End Function

    End Class
End Namespace

