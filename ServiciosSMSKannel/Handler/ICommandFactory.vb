Public Interface ICommandFactory
    Sub ReleaseCommand(ByVal command As ICommand)
    Function CreateCommand(ByVal httpContext As HttpContextBase, ByVal commandName As String) As ICommand
End Interface
