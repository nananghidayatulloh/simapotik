Public Class Supplier
    Private m_NamaSupplier As String
    Private m_Telp As String
    Private m_Alamat As String
    Private m_NoIjin As String
    Private m_PenanggungJawab As String
    Private m_IdSupplier As Integer
    Private m_IdMember As Integer


    Public Property NamaSupplier() As String
        Get
            Return m_NamaSupplier
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaSupplier = value
        End Set
    End Property
    Public Property Telp() As String
        Get
            Return m_Telp
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No SIP")
            End If
            m_Telp = value
        End Set
    End Property
    Public Property Alamat() As String
        Get
            Return m_Alamat
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Alamat")
            End If
            m_Alamat = value
        End Set
    End Property
    Public Property NoIjin() As String
        Get
            Return m_NoIjin
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No Kontak")
            End If
            m_NoIjin = value
        End Set
    End Property

    Public Property PenanggungJawab() As String
        Get
            Return m_PenanggungJawab
        End Get
        Set(ByVal value As String)
            m_PenanggungJawab = value
        End Set
    End Property

    Public Property IdSupplier() As Integer
        Get
            Return m_IdSupplier

        End Get
        Set(ByVal value As Integer)
            m_IdSupplier = value
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
