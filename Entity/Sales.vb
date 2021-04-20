Public Class Sales
    Private m_Nama As String
    Private m_Alamat As String
    Private m_Kontak As String
    Private m_IdSales As Integer
    Private m_Wilayah As String
    Private m_Area As String
    Private m_SubArea As String
    Private m_IdMember As Integer
    Private m_Komisi As Double


    Public Property Nama() As String
        Get
            Return m_Nama
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_Nama = value
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
    Public Property Kontak() As String
        Get
            Return m_Kontak
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan No Kontak")
            End If
            m_Kontak = value
        End Set
    End Property

    Public Property Area() As String
        Get
            Return m_Area

        End Get
        Set(ByVal value As String)
            m_Area = value
        End Set
    End Property

    Public Property SubArea() As String
        Get
            Return m_SubArea
        End Get
        Set(ByVal value As String)
            m_SubArea = value
        End Set
    End Property


    Public Property Wilayah() As String
        Get
            Return m_Wilayah

        End Get
        Set(ByVal value As String)
            m_Wilayah = value
        End Set
    End Property

    Public Property Komisi() As Double
        Get
            Return m_Komisi
        End Get
        Set(ByVal value As Double)
            m_Komisi = value
        End Set
    End Property


    Public Property IDSales() As Integer
        Get
            Return m_IdSales

        End Get
        Set(ByVal value As Integer)
            m_IdSales = value
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
