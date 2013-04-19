﻿Imports System.Runtime.CompilerServices

Namespace Helpers
    Public Class CategoriasHelper
        Inherits BaseHelper


        Public Shared Function GetLink(ByVal row As DataRow) As String

            ' Si debe mostrar una liga para contenidos o sub categorias
            If CInt(row("ListaContenidos")) = 0 Then
                Dim url As String = "~/Categorias.aspx/Ver/" & CStr(row("idCategoria"))
                Return String.Format("<a href='{0}'>{1}</a>", GetRelativeUrl(url), CStr(row("Nombre")))
            Else
                Dim url As String = "~/Contenido.aspx/List/" & CStr(row("idCategoria"))
                Return String.Format("<a href='{0}'>{1}</a>", GetRelativeUrl(url), CStr(row("Nombre")))
            End If
        End Function


    End Class
End Namespace
