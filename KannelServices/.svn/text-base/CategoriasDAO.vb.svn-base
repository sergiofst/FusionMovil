Imports MySql.Data.MySqlClient

Public Class CategoriasDAO
    Inherits BaseDAO

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function GetCategoria(ByVal idCategoria As Integer) As DataSet
        Return GetDataSet(String.Format("SELECT idCategoria, Nombre, Icono, Estatus FROM Categorias WHERE idCategoria = {0}", idCategoria))
    End Function

    Public Function GetCategorias() As DataSet
        Return GetDataSet("SELECT  idCategoria, Nombre, Icono, idPadre, Estatus FROM Categorias")
    End Function

    Public Function GetCategoriasbyIdPadre(ByVal idPadre As Integer) As DataSet
        Return GetDataSet(String.Format("SELECT  idCategoria, Nombre, Icono, idPadre, Estatus FROM Categorias WHERE idPadre = {0}", idPadre))
    End Function

    Public Function Conexion() As MySqlConnection

        Return Nothing
    End Function
End Class
