Public Class Obat
    '
    Private m_nama_obat As String
    Private m_kode_obat As String
    Private m_barcode_obat As String
    Private m_id_jenis_obat As Integer
    Private m_id_golongan As Integer
    Private m_id_sub_golongan As Integer
    Private m_id_merk As Integer
    Private m_tipe As String
    Private m_indikasi As String
    Private m_post_image As String
    Private m_deskripsi As String
    Private m_komposisi As String
    Private m_dosis As String
    Private m_stok_total As Integer
    Private m_stok_min As Integer
    Private m_stok_max As Integer
    Private m_platform As String
    Private m_CreatedBy As String
    Private m_CreatedDate As String
    Private m_ModifiedBy As String
    Private m_ModifiedDate As String
    Private m_id_obat As Integer
    Private m_id_member As Integer
    Private m_gambar As Byte


    Public Property NamaObat As String
        Get
            Return m_nama_obat
        End Get
        Set(ByVal value As String)
            m_nama_obat = value
        End Set
    End Property


    Public Property CreatedBy As String
        Get
            Return m_CreatedBy
        End Get
        Set(ByVal value As String)
            m_CreatedBy = value
        End Set
    End Property

    Public Property CreatedDate As String
        Get
            Return m_CreatedDate
        End Get
        Set(ByVal value As String)
            m_CreatedDate = value
        End Set
    End Property

    Public Property ModifiedBy As String
        Get
            Return m_ModifiedBy
        End Get
        Set(ByVal value As String)
            m_ModifiedBy = value
        End Set
    End Property

    Public Property ModifiedDate As String
        Get
            Return m_ModifiedDate
        End Get
        Set(ByVal value As String)
            m_ModifiedDate = value
        End Set
    End Property

    Public Property IdObat As Integer
        Get
            Return m_id_obat
        End Get
        Set(ByVal value As Integer)
            m_id_obat = value
        End Set
    End Property

    Public Property IdMember As Integer
        Get
            Return m_id_member
        End Get
        Set(ByVal value As Integer)
            m_id_member = value
        End Set
    End Property

    Public Property Kode_obat As String
        Get
            Return m_kode_obat
        End Get
        Set(value As String)
            m_kode_obat = value
        End Set
    End Property

    Public Property Barcode_obat As String
        Get
            Return m_barcode_obat
        End Get
        Set(value As String)
            m_barcode_obat = value
        End Set
    End Property

    Public Property Id_jenis_obat As Integer
        Get
            Return m_id_jenis_obat
        End Get
        Set(value As Integer)
            m_id_jenis_obat = value
        End Set
    End Property

    Public Property Id_golongan As Integer
        Get
            Return m_id_golongan
        End Get
        Set(value As Integer)
            m_id_golongan = value
        End Set
    End Property

    Public Property Id_sub_golongan As Integer
        Get
            Return m_id_sub_golongan
        End Get
        Set(value As Integer)
            m_id_sub_golongan = value
        End Set
    End Property

    Public Property Id_merk As Integer
        Get
            Return m_id_merk
        End Get
        Set(value As Integer)
            m_id_merk = value
        End Set
    End Property

    Public Property Tipe As String
        Get
            Return m_tipe
        End Get
        Set(value As String)
            m_tipe = value
        End Set
    End Property

    Public Property Indikasi As String
        Get
            Return m_indikasi
        End Get
        Set(value As String)
            m_indikasi = value
        End Set
    End Property

    Public Property Post_image As String
        Get
            Return m_post_image
        End Get
        Set(value As String)
            m_post_image = value
        End Set
    End Property

    Public Property Deskripsi As String
        Get
            Return m_deskripsi
        End Get
        Set(value As String)
            m_deskripsi = value
        End Set
    End Property

    Public Property Komposisi As String
        Get
            Return m_komposisi
        End Get
        Set(value As String)
            m_komposisi = value
        End Set
    End Property

    Public Property Dosis As String
        Get
            Return m_dosis
        End Get
        Set(value As String)
            m_dosis = value
        End Set
    End Property

    Public Property Stok_total As Integer
        Get
            Return m_stok_total
        End Get
        Set(value As Integer)
            m_stok_total = value
        End Set
    End Property

    Public Property Stok_min As Integer
        Get
            Return m_stok_min
        End Get
        Set(value As Integer)
            m_stok_min = value
        End Set
    End Property

    Public Property Stok_max As Integer
        Get
            Return m_stok_max
        End Get
        Set(value As Integer)
            m_stok_max = value
        End Set
    End Property

    Public Property Platform As String
        Get
            Return m_platform
        End Get
        Set(value As String)
            m_platform = value
        End Set
    End Property

    Public Property Gambar As Byte
        Get
            Return m_gambar
        End Get
        Set(value As Byte)
            m_gambar = value
        End Set
    End Property
End Class

