Public Class MobileCapableWebFormViewEngine
    Inherits WebFormViewEngine

    Public Overrides Function FindView(ByVal controllerContext As System.Web.Mvc.ControllerContext, ByVal viewName As String, ByVal masterName As String, ByVal useCache As Boolean) As System.Web.Mvc.ViewEngineResult
        Dim result As ViewEngineResult = Nothing
        Dim request As HttpRequestBase = controllerContext.HttpContext.Request

        '' This could be replaced with a switch statement as other advanced / device specific views are created
        If UserAgentIs(controllerContext, "iPhone") Then
            result = MyBase.FindView(controllerContext, "iPhone/" + viewName, masterName, useCache)
        End If
        
        '' Avoid unnecessary checks if this device isn't suspected to be a mobile device
        If request.Browser.IsMobileDevice Then
            If UserAgentIs(controllerContext, "MSIEMobile 6") Then
                result = MyBase.FindView(controllerContext, "MobileIE6/" + viewName, masterName, useCache)
            ElseIf UserAgentIs(controllerContext, "PocketIE") And request.Browser.MajorVersion >= 4 Then
                result = MyBase.FindView(controllerContext, "PocketIE/" + viewName, masterName, useCache)
            End If
        End If

        '' Fall back to desktop view if no other view has been selected
        If result Is Nothing Then
            ' Vista para navegador
            result = MyBase.FindView(controllerContext, viewName, masterName, useCache)
        End If
        Return result
    End Function

    Private Function UserAgentIs(ByVal controllerContext As ControllerContext, ByVal userAgentToTest As String) As Boolean
        Return (controllerContext.HttpContext.Request.UserAgent.IndexOf(userAgentToTest, StringComparison.OrdinalIgnoreCase) > 0)
    End Function

End Class
