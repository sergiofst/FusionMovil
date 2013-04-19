Imports FusionMovil.Data

Namespace Controllers
    Public Class FavoritosController
        Inherits BaseController

        Public Function Add() As ActionResult
            Dim favService As FavoritesService.FavoritesService = New FavoritesService.FavoritesService
            Dim idFavorito As Integer = New FavoritoDAO(CreateConnection).AddFavorito(GetTelefono, 0)

            Dim response As String = favService.askFav(SIAUser, SIAPassword, GetTelefono, VirtualPathUtility.ToAbsolute("~/"), GetPortalTitle)

            Dim respArray() As String = response.Split("|"c)

            ' Verifica la respuesta
            If respArray(0) = "0" Then  ' Todo perfecto
                ' Redirecciono a la pagina del sia para que confirme el usuario
                Me.Response.Redirect(String.Format("http://{0}/sia/fav.jsp?id={1}", SIAHost, SIAUser))
            Else
                ViewData("Mensaje") = "Hubo un problema al efectuar la operacion"
                ' TODO Debo guardar esto con un logger
            End If

            Return View()
        End Function

    End Class
End Namespace

