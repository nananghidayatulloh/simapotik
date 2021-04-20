Public Class Gudang
    Private m_NamaGudang As String
    Private m_IdGudang As Integer
    Private m_IdMember As Integer


    Public Property NamaGudang() As String
        Get
            Return m_NamaGudang
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaGudang = value
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

    Public Property IDMember() As Integer
        Get
            Return m_IdMember
        End Get
        Set(ByVal value As Integer)
            m_IdMember = value
        End Set
    End Property
End Class
