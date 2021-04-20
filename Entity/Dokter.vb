Public Class Dokter
    Private m_NamaDokter As String
    Private m_Sip As String
    Private m_AlamatDokter As String
    Private m_KontakDokter As String
    Private m_IdDokter As Integer
    Private m_IdMember As Integer


    Public Property NamaDokter() As String
        Get
            Return m_NamaDokter
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaDokter = value
        End Set
    End Property
    Public Property Sip() As String
        Get
            Return m_Sip
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No SIP")
            End If
            m_Sip = value
        End Set
    End Property
    Public Property AlamatDokter() As String
        Get
            Return m_AlamatDokter
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Alamat")
            End If
            m_AlamatDokter = value
        End Set
    End Property
    Public Property KontakDokter() As String
        Get
            Return m_KontakDokter
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No Kontak")
            End If
            m_KontakDokter = value
        End Set
    End Property

    Public Property IDDokter() As Integer
        Get
            Return m_IdDokter

        End Get
        Set(ByVal value As Integer)
            m_IdDokter = value
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
