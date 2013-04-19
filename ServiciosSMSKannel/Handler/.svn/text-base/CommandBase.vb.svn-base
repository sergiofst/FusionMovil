Imports System.Web.Routing

Public MustInherit Class CommandBase
    Implements ICommand

    Private m_controllerContext As CommandContext

    Protected Sub _Execute(ByVal httpContext As HttpContextBase) Implements ICommand._Execute
        If httpContext Is Nothing Then
            Throw New ArgumentNullException("httpContext")
        End If

        Initialize(httpContext)
        ExecuteCore()
    End Sub

    Protected MustOverride Sub ExecuteCore()

    Protected Sub Initialize(ByVal httpContext As HttpContextBase)
        CommandContext = New CommandContext(httpContext, Me)
    End Sub

    Public Property CommandContext As CommandContext
        Get
            Return m_controllerContext
        End Get
        Set(ByVal value As CommandContext)
            m_controllerContext = value
        End Set
    End Property

    Public ReadOnly Property ConnectionString() As ConnectionStringSettings
        Get
            Return ConfigurationManager.ConnectionStrings(Constantes.CONN_STR_KEY)
        End Get
    End Property


End Class
