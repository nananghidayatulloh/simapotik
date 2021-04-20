Public Class TBLPerkiraan
    Private m_Kode_Perkiraan As String
    Private m_Nama_Perkiraan As String
    Private m_Kelompok_Akun As String
    Private m_Kelompok_Laporan As String
    Private m_Kode_Perusahaan As String

    Public Property Kode_Perkiraan() As String

        Get
            Return m_Kode_Perkiraan
        End Get
        Set(ByVal value As String)
            m_Kode_Perkiraan = value
        End Set
    End Property


    Public Property Nama_Perkiraan() As String

        Get
            Return m_Kode_Perkiraan
        End Get
        Set(ByVal value As String)
            m_Kode_Perkiraan = value
        End Set
    End Property

    Public Property Kelompok_Akun() As String

        Get
            Return m_Kelompok_Akun
        End Get
        Set(ByVal value As String)
            m_Kelompok_Akun = value
        End Set
    End Property

    Public Property Kelompok_Laporan() As String

        Get
            Return m_Kelompok_Laporan
        End Get
        Set(ByVal value As String)
            m_Kelompok_Laporan = value
        End Set
    End Property

    Public Property Kode_Perusahaan() As String

        Get
            Return m_Kode_Perusahaan
        End Get
        Set(ByVal value As String)
            m_Kode_Perusahaan = value
        End Set
    End Property
End Class
