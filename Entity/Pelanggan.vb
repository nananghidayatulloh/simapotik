Public Class Pelanggan
    Private m_NamaPelanggan As String
    Private m_AlamatPelanggan As String
    Private m_KontakPelanggan As String
    Private m_IdPelanggan As Integer
    Private m_IdMember As Integer


    Public Property NamaPelanggan() As String
        Get
            Return m_NamaPelanggan
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaPelanggan = value
        End Set
    End Property
   
    Public Property AlamatPelanggan() As String
        Get
            Return m_AlamatPelanggan
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Alamat")
            End If
            m_AlamatPelanggan = value
        End Set
    End Property
    Public Property KontakPelanggan() As String
        Get
            Return m_KontakPelanggan
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No Kontak")
            End If
            m_KontakPelanggan = value
        End Set
    End Property

    Public Property IDPelanggan() As Integer
        Get
            Return m_IdPelanggan

        End Get
        Set(ByVal value As Integer)
            m_IdPelanggan = value
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
