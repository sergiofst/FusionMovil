Imports Portal2.DAO

Public Class MenuController
    Inherits BaseController

    ''' <summary>
    ''' Muestra el menu raiz del portal
    ''' </summary>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function Index() As ActionResult
        Dim daoMenu As MenuDAO = New MenuDAO(GetConnectionString)
        ViewData("MenuList") = daoMenu.ListMenuByIdParent(0)
        Return View()
    End Function

    ''' <summary>
    ''' Muestra el Menu por el idParent
    ''' </summary>
    ''' <param name="id">idMenu</param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function SubMenu(ByVal id As Integer) As ActionResult
        Dim daoMenu As MenuDAO = New MenuDAO(GetConnectionString)
        ViewData("MenuList") = daoMenu.ListMenuByIdParent(id)
        Return View()
    End Function

End Class
