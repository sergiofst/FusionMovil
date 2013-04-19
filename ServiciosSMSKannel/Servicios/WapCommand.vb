Imports ServiciosSMSKannel.DAO

Public Class WapCommand
    Inherits Command

    Public Overrides Function Execute(ByVal context As CommandContext) As ActionResult
        Dim contClave As ContenidoClave = GetContenidoClave()
        Dim cont As Contenido = GetContenido(contClave.IdContenido)

        'Validar si la clave no es NUla.
        Return SMS("Descarga tu contenido: www.gggg.com")
    End Function

End Class
