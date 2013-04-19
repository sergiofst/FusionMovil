Imports System.Threading
Imports Quartz
Imports Quartz.Impl

Namespace Jobs
    Public Class SuscripcionesCron

        Private Shared m_instance As SuscripcionesCron
        Private Shared m_lock As Object = New Object
        Private m_sched As IScheduler

        Public Shared Function GetInstance() As SuscripcionesCron
            SyncLock m_lock
                If m_instance Is Nothing Then
                    m_instance = New SuscripcionesCron
                End If
            End SyncLock
            Return m_instance
        End Function

        Private Sub New()

        End Sub

        Public Sub Start()
            m_sched = New StdSchedulerFactory().GetScheduler
            Dim job As JobDetail = New JobDetail("job1", "group1", GetType(RenuevaSuscripcionesJob))
            Dim dailyTrigger As Trigger = TriggerUtils.MakeDailyTrigger(10, 30)
            dailyTrigger.StartTimeUtc = Date.UtcNow
            dailyTrigger.Name = "susripcionesCron"
            m_sched.ScheduleJob(job, dailyTrigger)
            m_sched.Start()
        End Sub

        Public Sub Shutdown()
            m_sched.Shutdown()
        End Sub

    End Class
End Namespace

