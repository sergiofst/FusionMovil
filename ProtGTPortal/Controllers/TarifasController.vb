Imports MySql.Data.MySqlClient
Imports ProtGTPortal.DAO
Imports ProtGTPortal.WebReference
Imports System.Diagnostics
Imports log4net


<HandleError()> _
Public Class TarifasController
    Inherits BaseController

    Function Index() As ActionResult
        Return View()
    End Function

End Class
