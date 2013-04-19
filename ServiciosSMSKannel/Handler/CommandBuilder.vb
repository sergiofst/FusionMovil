Public Class CommandBuilder
    Private Shared m_instance As CommandBuilder = New CommandBuilder()

    Public Shared ReadOnly Property Current As CommandBuilder
        Get
            Return m_instance
        End Get
    End Property

    Public Function GetCommandFactory() As ICommandFactory
        Return New DefaultCommandFactory()
    End Function
End Class
