Public Class Pasien
    Private m_NamaPasien As String
    Private m_Bpjs As String
    Private m_AlamatPasien As String
    Private m_KontakPasien As String
    Private m_JenisKelamin As String
    Private m_TanggalLahir As String
    Private m_IdPasien As Integer
    Private m_IdMember As Integer


    Public Property NamaPasien() As String
        Get
            Return m_NamaPasien
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaPasien = value
        End Set
    End Property
    Public Property Bpjs() As String
        Get
            Return m_Bpjs
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No SIP")
            End If
            m_Bpjs = value
        End Set
    End Property
    Public Property AlamatPasien() As String
        Get
            Return m_AlamatPasien
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Alamat")
            End If
            m_AlamatPasien = value
        End Set
    End Property
    Public Property KontakPasien() As String
        Get
            Return m_KontakPasien
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No Kontak")
            End If
            m_KontakPasien = value
        End Set
    End Property

    Public Property KelaminPasien() As String
        Get
            Return m_JenisKelamin
        End Get
        Set(ByVal value As String)
            m_JenisKelamin = value
        End Set
    End Property

    Public Property TglLahirPasien() As String
        Get
            Return m_TanggalLahir
        End Get
        Set(ByVal value As String)
            m_TanggalLahir = value
        End Set
    End Property

    Public Property IdPasien() As Integer
        Get
            Return m_IdPasien

        End Get
        Set(ByVal value As Integer)
            m_IdPasien = value
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
