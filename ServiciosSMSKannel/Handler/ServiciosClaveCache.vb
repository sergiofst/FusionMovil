Imports ServiciosSMSKannel.DAO

Public Class ServiciosClaveCache
    Private Shared m_instance As ServiciosClaveCache

    Private m_regexs As ArrayList
    Private m_datarows As ArrayList

    Public Shared Function Instance() As ServiciosClaveCache
        If m_instance Is Nothing Then
            SyncLock GetType(ServiciosClaveCache)
                m_instance = New ServiciosClaveCache
            End SyncLock
        End If
        Return m_instance
    End Function

    Private Sub New()

    End Sub

    Public Function FindServicioClave(ByVal httpContext As HttpContextBase, ByVal handler As SMSServicesHandler) As ServicioClave
        If m_datarows Is Nothing Then
            Init(handler)
        End If

        Dim texto As String = httpContext.Request(KannelConstantes.TEXTO).Trim
        For Each rgxClave As Regex In m_regexs
            If rgxClave.IsMatch(texto) Then
                Return CType(m_datarows(m_regexs.IndexOf(rgxClave)), ServicioClave)
            End If
        Next
        Return Nothing
    End Function

    Public Sub Init(ByVal handler As SMSServicesHandler)
        m_regexs = New ArrayList
        m_datarows = New ArrayList
        Dim dsServicioClaves As DataSet = New ServiciosDAO(handler.GetConnectionString).GetServicioClaves
        For Each drServicioClave As DataRow In dsServicioClaves.Tables(0).Rows
            Dim rgxClave As Regex = New Regex(CStr(drServicioClave("Clave")), RegexOptions.Compiled)
            m_datarows.Add(New ServicioClave With { _
                                                    .IdServicioClave = CInt(drServicioClave("IdServicioClave")), _
                                                    .IdServicio = CInt(drServicioClave("IdServicio")), _
                                                    .Clave = CStr(drServicioClave("Clave")), _
                                                    .Estatus = CInt(drServicioClave("Estatus")) _
                                                    })
            m_regexs.Add(rgxClave)
        Next
    End Sub

End Class
