Imports log4net

<HandleError()> _
Public Class HomeController
    Inherits BaseController

    Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(HomeController))
    Private Shared isDebugEnabled As Boolean = Logger.IsDebugEnabled
    Private Shared IsErrorEnabled As Boolean = Logger.IsErrorEnabled
    Private Shared IsWarnEnabled As Boolean = Logger.IsWarnEnabled
    Private Shared IsInfoEnabled As Boolean = Logger.IsInfoEnabled

    Function Index() As ActionResult
        ViewData("Message") = "Welcome to ASP.NET MVC!"

        For Each key As String In Me.Request.Headers.AllKeys
            Logger.DebugFormat("Key: {0} Value: {1}", key, Me.Request.Headers(key))
        Next

        Return View()
    End Function

    Function About() As ActionResult
        Return View()
    End Function
End Class
