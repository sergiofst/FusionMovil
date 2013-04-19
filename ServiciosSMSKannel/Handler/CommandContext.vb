Imports System.Web.Routing

Public Class CommandContext
    Private m_httpContext As HttpContextBase
    Private m_controller As CommandBase

    Public Sub New(ByVal httpContext As HttpContextBase, ByVal controller As CommandBase)
        If httpContext Is Nothing Then
            Throw New ArgumentNullException("httpContext")
        End If
        If controller Is Nothing Then
            Throw New ArgumentNullException("controller")
        End If
        m_httpContext = httpContext
        m_controller = controller
    End Sub

    Public Property Controller As CommandBase
        Get
            Return m_controller
        End Get
        Set(ByVal value As CommandBase)
            m_controller = value
        End Set
    End Property

    Public Property HttpContext As HttpContextBase
        Get
            If m_httpContext Is Nothing Then
                m_httpContext = New EmptyHttpContext
            End If
            Return m_httpContext
        End Get
        Set(ByVal value As HttpContextBase)
            m_httpContext = value
        End Set
    End Property

    Private Class EmptyHttpContext
        Inherits HttpContextBase
    End Class

End Class
