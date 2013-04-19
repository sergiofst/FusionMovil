Imports log4net
Imports ServiciosSMSKannel.DAO
Imports System.IO
Imports System.Net

Namespace Utils
    Public Class KannelSMSSender

        Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(KannelSMSSender))
        Private Shared isDebugEnabled As Boolean = Logger.IsDebugEnabled

        Private m_smsbox_url As String
        Private m_wappush_url As String
        Private m_userName As String
        Private m_password As String

        Public Sub New()
            m_smsbox_url = ConfigurationManager.AppSettings("Kannel.SMSBox.Url")
            m_wappush_url = ConfigurationManager.AppSettings("Kannel.WapPush.Url")
            m_userName = ConfigurationManager.AppSettings("Kannel.UserName")
            m_password = ConfigurationManager.AppSettings("Kannel.Password")

            If String.IsNullOrEmpty(m_smsbox_url) Then
                Throw New ConfigurationErrorsException("Parametro Kannel.SMSBox.Url no presente")
            End If
            If String.IsNullOrEmpty(m_smsbox_url) Then
                Throw New ConfigurationErrorsException("Parametro Kannel.WapPush.Url no presente")
            End If
            If String.IsNullOrEmpty(m_userName) Then
                Throw New ConfigurationErrorsException("Parametro Kannel.UserName no presente")
            End If
            If String.IsNullOrEmpty(m_password) Then
                Throw New ConfigurationErrorsException("Parametro Kannel.Password no presente")
            End If
        End Sub

        Public Function Send(ByVal from As String, ByVal [to] As String, ByVal texto As String, ByVal smsc As String, ByVal context As CommandContext) As String
            Dim webClient As System.Net.WebClient = New System.Net.WebClient()
            Dim params As Hashtable = New Hashtable
            With params
                .Add(KannelConstantes.USER_NAME, m_userName)
                .Add(KannelConstantes.PASSWORD, m_password)
                .Add(KannelConstantes.FROM, from)
                .Add(KannelConstantes.TO, [to])
                .Add(KannelConstantes.SMSC, smsc)
                .Add(KannelConstantes.TEXTO, texto)
            End With
            Dim urlPost As String = m_smsbox_url & "?" & GetCGiParams(params)
            Return webClient.DownloadString(urlPost)
        End Function

        Public Function SendWapPush(ByVal titulo As String, ByVal url As String, ByVal [to] As String, ByVal from As String, ByVal smsc As String) As String
            Dim udh As String = "%06%05%04%0B%84%23%F0"
            Dim wapPush As StringBuilder = New StringBuilder
            With wapPush
                .Append("")
            End With
            Dim webClient As System.Net.WebClient = New System.Net.WebClient()
            Dim params As Hashtable = New Hashtable
            With params
                .Add(KannelConstantes.USER_NAME, m_userName)
                .Add(KannelConstantes.PASSWORD, m_password)
                .Add(KannelConstantes.FROM, from)
                .Add(KannelConstantes.TO, [to])
                .Add(KannelConstantes.SMSC, smsc)
            End With
            Dim urlPost As String = m_smsbox_url & "?" & GetCGiParams(params)
            Return webClient.DownloadString(urlPost)
        End Function

        'Public Function SendWapPush(ByVal titulo As String, ByVal url As String, ByVal [to] As String, ByVal from As String, ByVal smsc As String) As String
        '    Dim params As Hashtable = New Hashtable
        '    With params
        '        .Add(KannelConstantes.USER_NAME, m_userName)
        '        .Add(KannelConstantes.PASSWORD, m_password)
        '        .Add(KannelConstantes.FROM, from)
        '        .Add(KannelConstantes.TO, [to])
        '        .Add(KannelConstantes.SMSC, smsc)
        '    End With
        '    Dim urlPost As String = m_wappush_url & "?" & GetCGiParams(params)

        '    Dim request As WebRequest = WebRequest.Create(urlPost)
        '    request.Method = "POST"
        '    request.ContentType = "application/vnd.wap.sic"

        '    Dim credential As NetworkCredential = New NetworkCredential(m_userName, m_password)
        '    Dim writer As StreamWriter = New StreamWriter(request.GetRequestStream)

        '    Dim wappush As StringBuilder = New StringBuilder
        '    With wappush
        '        .Append("<?xml version=""1.0""?>")
        '        .Append("<!DOCTYPE si PUBLIC ""-//WAPFORUM//DTD SI 1.0//EN"" ""http://www.wapforum.org/DTD/si.dtd"">")
        '        .Append("<si>")
        '        .Append("<indication href=""{1}""")
        '        .Append("si-id=""{0}@fusionmovil.com.mx""")
        '        .Append("action=""signal-high"">")
        '        .Append("{2}")
        '        .Append("</indication>")
        '        .Append("</si>")
        '    End With

        '    writer.Write(String.Format(wappush.ToString, System.Guid.NewGuid().ToString, url, titulo))
        '    writer.Flush()
        '    writer.Close()

        '    Dim respuesta As String
        '    With New StreamReader(request.GetResponse.GetResponseStream)
        '        respuesta = .ReadToEnd
        '    End With

        '    Return respuesta
        'End Function

        Private Function GetCGiParams(ByVal map As Hashtable) As String
            Dim result As StringBuilder = New StringBuilder
            For Each key As String In map.Keys
                result.AppendFormat("{0}={1}&", key, map(key))
            Next
            Return result.ToString.TrimEnd("&"c)
        End Function

    End Class
End Namespace


