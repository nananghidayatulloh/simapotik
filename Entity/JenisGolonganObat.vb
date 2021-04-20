Public Class JenisGolonganObat
    Private m_NamaJenis As String
    Private m_IdJenis As Integer
    Private m_IdMember As Integer


    Public Property NamaJenis() As String
        Get
            Return m_NamaJenis
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaJenis = value
        End Set
    End Property

    Public Property IdJenis() As Integer
        Get
            Return m_IdJenis

        End Get
        Set(ByVal value As Integer)
            m_IdJenis = value
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
