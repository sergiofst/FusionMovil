Public Class MobileCapableWebFormViewEngine
    Inherits WebFormViewEngine

    Public Overrides Function FindView(ByVal controllerContext As System.Web.Mvc.ControllerContext, ByVal viewName As String, ByVal masterName As String, ByVal useCache As Boolean) As System.Web.Mvc.ViewEngineResult

        Dim result As ViewEngineResult = Nothing
        Dim request As HttpRequestBase = controllerContext.HttpContext.Request

        'If UserAgentIs(controllerContext, "iPhone") Then
        'result = MyBase.FindView(controllerContext, "Mobile/iPhone/" + viewName, masterName, useCache)
        'End If

        ' Lo hago que pase a la fuerza por mobile para desarrollo
        'If request.Browser.IsMobileDevice Then
        'If UserAgentIs(controllerContext, "MSIEMobile 6") Then
        '    result = MyBase.FindView(controllerContext, "Mobile/MobileIE6/" + viewName, masterName, useCache)
        'End If

        If result Is Nothing Then
            'If request.Browser.IsMobileDevice Then
            result = MyBase.FindView(controllerContext, "Mobile/" + viewName, masterName, useCache)
            'End If
        End If
        'End If

        If result Is Nothing Then
            result = MyBase.FindView(controllerContext, viewName, masterName, useCache)
        End If

        Return result
    End Function

    Public Function UserAgentIs(ByVal context As ControllerContext, ByVal userAgentToTest As String) As Boolean
        Return (context.HttpContext.Request.UserAgent.IndexOf(userAgentToTest, StringComparison.OrdinalIgnoreCase) > 0)
    End Function
End Class
