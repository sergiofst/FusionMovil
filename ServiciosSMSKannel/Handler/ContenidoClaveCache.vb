Imports ServiciosSMSKannel.DAO

Public Class ContenidoClaveCache
    Private Shared m_instance As ContenidoClaveCache

    Private m_regexs As ArrayList = Nothing
    Private m_datarows As List(Of ContenidoClave) = Nothing

    Public Shared Function Instance() As ContenidoClaveCache
        If m_instance Is Nothing Then
            SyncLock GetType(ContenidoClaveCache)
                m_instance = New ContenidoClaveCache
            End SyncLock
        End If
        Return m_instance
    End Function

    Private Sub New()

    End Sub

    Public Function FindContenidoClave(ByVal httpContext As HttpContextBase, ByVal handler As SMSServicesHandler) As ContenidoClave
        If m_datarows Is Nothing Then
            Init(handler)
        End If

        Dim texto As String = httpContext.Request(KannelConstantes.TEXTO).Trim
        Dim serv As Servicio = CType(httpContext.Items(Constantes.HTTP_SERVICIO), Servicio)
        For i As Integer = 0 To m_datarows.Count - 1
            'If CInt(CType(m_datarows(i), DataRow)("idServicio")) = serv.IdServicio Then
            If CType(m_regexs(i), Regex).IsMatch(texto) Then
                Return CType(m_datarows(i), ContenidoClave)
            End If
            'End If
        Next
        Return Nothing
    End Function

    Public Sub Init(ByVal handler As SMSServicesHandler)
        m_regexs = New ArrayList
        m_datarows = New List(Of ContenidoClave)()
        Dim dsContenidoClaves As DataSet = New ContenidosDAO(handler.GetConnectionString).GetContenidoClaves
        For Each drContenidoClave As DataRow In dsContenidoClaves.Tables(0).Rows
            Dim rgxClave As Regex = New Regex(CStr(drContenidoClave("Clave")), RegexOptions.Compiled)
            m_datarows.Add(New ContenidoClave With { _
                                                    .IdContenidoClave = CInt(drContenidoClave("IdContenidoClave")), _
                                                    .IdContenido = CInt(drContenidoClave("IdContenido")), _
                                                    .Clave = CStr(drContenidoClave("Clave")), _
                                                    .Estatus = CInt(drContenidoClave("Estatus")), _
                                                    .IdMedio = CInt(drContenidoClave("IdMedio"))})
            m_regexs.Add(rgxClave)
        Next
    End Sub
End Class
