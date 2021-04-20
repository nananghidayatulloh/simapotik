Public Class Rak
    Private m_NamaRak As String

    Private m_IdRak As Integer
    Private m_IdGudang As Integer
    Private m_IdMember As Integer


    Public Property NamaRak() As String
        Get
            Return m_NamaRak
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaRak = value
        End Set
    End Property
    Public Property IdGudang() As Integer
        Get
            Return m_IdGudang

        End Get
        Set(ByVal value As Integer)
            m_IdGudang = value
        End Set
    End Property

    Public Property IdRak() As Integer
        Get
            Return m_IdRak

        End Get
        Set(ByVal value As Integer)
            m_IdRak = value
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
