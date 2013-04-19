Imports Portal.Jobs

' Note: For instructions on enabling IIS6 or IIS7 classic mode, 
' visit http://go.microsoft.com/?LinkId=9394802

Public Class MvcApplication
    Inherits System.Web.HttpApplication

    Shared Sub RegisterRoutes(ByVal routes As RouteCollection)
        routes.IgnoreRoute("{resource}.axd/{*pathInfo}")

        ' MapRoute takes the following parameters, in order:
        ' (1) Route name
        ' (2) URL with parameters
        ' (3) Parameter defaults
        routes.MapRoute( _
            "Default", _
            "{controller}.aspx/{action}/{id}", _
            New With {.controller = "Categorias", .action = "Index", .id = UrlParameter.Optional} _
        )

    End Sub

    Sub IniciaCron()
        SuscripcionesCron.GetInstance().Start()
    End Sub

    Sub Application_Start()
        AreaRegistration.RegisterAllAreas()

        RegisterRoutes(RouteTable.Routes)
        ViewEngines.Engines.Clear()
        ViewEngines.Engines.Add(New MobileCapableWebFormViewEngine())

        IniciaCron()
    End Sub
End Class
