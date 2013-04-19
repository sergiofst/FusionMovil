Imports System.Security.Permissions
Imports Microsoft.Win32
Imports System.IO
Imports System.Drawing

Namespace Results
    Public Class FondoActionResult
        Inherits ActionResult

        Private m_filePath As String

        Public Sub New()

        End Sub

        Public Sub New(ByVal filePath As String)
            m_filePath = filePath
        End Sub

        Public Property FilePath As String
            Get
                Return m_filePath
            End Get
            Set(ByVal value As String)
                m_filePath = value
            End Set
        End Property

        Public Overrides Sub ExecuteResult(ByVal context As System.Web.Mvc.ControllerContext)
            If Not String.IsNullOrEmpty(FilePath) Then
                context.HttpContext.Response.AddHeader("content-disposition", "attachment; filename=" + Me.FilePath)
            End If
            Dim rel_filePath As String = context.HttpContext.Server.MapPath(FilePath)
            context.HttpContext.Response.ContentType = GetMIMEType(rel_filePath)
            context.HttpContext.Response.TransmitFile(rel_filePath)
        End Sub

        Public Function GetMIMEType(ByVal filepath As String) As String
            Dim regPerm As RegistryPermission = New RegistryPermission(RegistryPermissionAccess.Read, "\\HKEY_CLASSES_ROOT")
            Dim classesRoot As RegistryKey = Registry.ClassesRoot
            Dim fi = New FileInfo(filepath)
            Dim dotExt As String = LCase(fi.Extension)
            Dim typeKey As RegistryKey = classesRoot.OpenSubKey("MIME\Database\Content Type")
            Dim keyname As String

            For Each keyname In typeKey.GetSubKeyNames()
                Dim curKey As RegistryKey = classesRoot.OpenSubKey("MIME\Database\Content Type\" & keyname)
                If LCase(CStr(curKey.GetValue("Extension"))) = dotExt Then
                    'Debug.WriteLine("Content type was " & keyname)
                    Return keyname
                End If
            Next
            Return Nothing
        End Function

        Sub ResizeImage(ByVal dir As String, ByVal fileName As String, ByVal percentResize As Double)
            Dim bm As New Bitmap("C:\" & dir & "\" & fileName)
            Dim width As Integer = CInt(bm.Width - (bm.Width * percentResize)) 'image width. 
            Dim height As Integer = CInt(bm.Height - (bm.Height * percentResize))  'image height
            Dim thumb As New Bitmap(width, height)
            Dim g As Graphics = Graphics.FromImage(thumb)
            g.InterpolationMode = Drawing2D.InterpolationMode.HighQualityBicubic
            g.DrawImage(bm, New Rectangle(0, 0, width, height), New Rectangle(0, 0, bm.Width, bm.Height), GraphicsUnit.Pixel)
            g.Dispose()
            bm.Dispose()
            'image path.
            thumb.Save("C:\" & dir & "\" & fileName, System.Drawing.Imaging.ImageFormat.Jpeg) 'can use any image format 
            thumb.Dispose()
        End Sub


    End Class
End Namespace

