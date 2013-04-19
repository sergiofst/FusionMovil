Imports FusionMovil.Data

Namespace Controllers
    Public Class CategoriasController
        Inherits BaseController

        ' Muestra la lista de las categorias de contenido
        Function Index() As ActionResult
            ViewData("Categorias") = New CategoriasDAO(CreateConnection).GetCategorias
            Return View()
        End Function

        Function Ver(ByVal id As Integer) As ActionResult
            ViewData("Categorias") = New CategoriasDAO(CreateConnection).GetCategoriasbyIdPadre(id)
            Return View()
        End Function

    End Class
End Namespace

