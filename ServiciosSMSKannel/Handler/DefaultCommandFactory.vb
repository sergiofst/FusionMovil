Public Class DefaultCommandFactory
    Implements ICommandFactory


    Public Function CreateCommand(ByVal httpContext As HttpContextBase, ByVal commandName As String) As ICommand Implements ICommandFactory.CreateCommand
        If httpContext Is Nothing Then
            Throw New ArgumentNullException("httpContext")
        End If
        If String.IsNullOrEmpty(commandName) Then
            Throw New ArgumentException("CommandName Invalido", "controllerName")
        End If

        Return CType(Activator.CreateInstance(Type.GetType(commandName)), ICommand)
    End Function

    Public Sub ReleaseCommand(ByVal command As ICommand) Implements ICommandFactory.ReleaseCommand

    End Sub
End Class
