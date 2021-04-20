Public Class Satuan
    Private m_NamaSatuan As String
    Private m_IdSatuan As Integer
    Private m_IdMember As Integer


    Public Property NamaSatuan() As String
        Get
            Return m_NamaSatuan
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaSatuan = value
        End Set
    End Property

    Public Property IdSatuan() As Integer
        Get
            Return m_IdSatuan

        End Get
        Set(ByVal value As Integer)
            m_IdSatuan = value
        End Set
    End Property

    Public Property IDMember() As Integer
        Get
            Return m_IdMember
        End Get
        Set(ByVal value As Integer)
            m_IdMember = value
        End Set
    End Property
End Class
