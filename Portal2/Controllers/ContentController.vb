Imports Portal2.DAO

Public Class ContentController
    Inherits BaseController

    ''' <summary>
    ''' Muestra la lista de los contenidos del menu (idCategory)
    ''' </summary>
    ''' <param name="id">idMenu</param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function List(ByVal id As Integer) As ActionResult
        Dim drMenu As DataRow = New MenuDAO(GetConnectionString).GetMenu(id)

        ViewData("Category") = New ContentDAO(GetConnectionString).GetCategory(CInt(drMenu("idCategory")))
        ViewData("ContentList") = New ContentDAO(GetConnectionString).ListContentByIdCategory(CInt(drMenu("idCategory")))

        Return View()
    End Function


End Class
