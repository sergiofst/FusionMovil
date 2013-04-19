Imports System.Data
Namespace Controllers.Test

    Public Class TestController
        Inherits System.Web.Mvc.Controller


        Public Function Index() As String
            Return "Hola"
        End Function

        Public Function Contenido() As String
            Return "El contenido " & Request.QueryString("texto")
        End Function

        Public Function alta() As String
            Dim msidn As String
            Dim msj As String
            Dim service As String
            Dim fech As String
            Dim transaction As String

            msidn = Request.QueryString("celular")
            msj = Request.QueryString("mensaje")
            service = Request.QueryString("serv")
            fech = Request.QueryString("fec")
            transaction = Request.QueryString("nuevo")

            Dim Constr As String = ConfigurationManager.ConnectionStrings("MySQL").ConnectionString

            'Conexion le paso de parametros, la cadena de conexion del constructor, ahora se va conectar a la base de datos SQL
            Dim dbconn As Data.Odbc.OdbcConnection = New Data.Odbc.OdbcConnection(Constr)
            Dim mycommand2 As Data.Odbc.OdbcCommand = New Data.Odbc.OdbcCommand
            'mycommand2.CommandType = CommandType.Text
            mycommand2.Connection = dbconn
            Dim temp, temp2, temp3, temp4, temp5 As String

            temp = msidn
            temp2 = msj
            temp3 = service
            temp4 = fech
            temp5 = transaction

            Dim parametros As New ArrayList
            parametros.Add(temp)
            parametros.Add(temp2)
            parametros.Add(temp3)
            parametros.Add(temp4)
            parametros.Add(temp5)
            parametros.TrimToSize()

            mycommand2.CommandText = String.Format("INSERT INTO usuario(msisdn, userId, tipo_ser, fecha, contentId) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", parametros(0), parametros(1), parametros(2), parametros(3), parametros(4))
            dbconn.Open()
            mycommand2.ExecuteNonQuery()
            Return "MAma mama en la escuela me dicen Joaquin,,, Mama: Callate Juaquín!"
            ' & msidn & msj & service & fech & transaction

        End Function

        Public Function latina() As String
            Dim msidn As String
            Dim msj As String
            Dim service As String
            Dim fech As String
            Dim transaction As String

            msidn = Request.QueryString("celular")
            msj = Request.QueryString("mensaje")
            service = Request.QueryString("serv")
            fech = Request.QueryString("fec")
            transaction = Request.QueryString("nuevo")

            Dim Constr As String = ConfigurationManager.ConnectionStrings("MySQL").ConnectionString

            'Conexion le paso de parametros, la cadena de conexion del constructor, ahora se va conectar a la base de datos SQL
            Dim dbconn As Data.Odbc.OdbcConnection = New Data.Odbc.OdbcConnection(Constr)
            Dim mycommand2 As Data.Odbc.OdbcCommand = New Data.Odbc.OdbcCommand
            'mycommand2.CommandType = CommandType.Text
            mycommand2.Connection = dbconn
            Dim temp, temp2, temp3, temp4, temp5 As String

            temp = msidn
            temp2 = msj
            temp3 = service
            temp4 = fech
            temp5 = transaction

            Dim parametros As New ArrayList
            parametros.Add(temp)
            parametros.Add(temp2)
            parametros.Add(temp3)
            parametros.Add(temp4)
            parametros.Add(temp5)
            parametros.TrimToSize()

            mycommand2.CommandText = String.Format("INSERT INTO usuario(msisdn, userId, tipo_ser, fecha, contentId) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", parametros(0), parametros(1), parametros(2), parametros(3), parametros(4))
            dbconn.Open()
            mycommand2.ExecuteNonQuery()

            Return "Servicio 2"
        End Function

        Public Function Prueba() As String
            Dim fecha As Date = Date.FromOADate(2010 / 10 / 23)
            Dim dia As Integer
            Dim hora As Integer
            dia = fecha.Day
            hora = fecha.Hour

            If (Now.Day - dia >= 1 And Now.Hour > hora) Then

            Else
                If Now.Day > 1 Then

                End If

            End If

        End Function
    End Class
End Namespace

