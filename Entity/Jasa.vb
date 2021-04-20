Public Class Jasa
    Private m_NamaJasa As String
    Private m_JenisJasa As String
    Private m_Keterangan As String

    Private m_HargaNetto As Double
    Private m_HargaNonResep As Double
    Private m_HargaResep As Double
    Private m_HargaBPJS As Double
    Private m_HargaKhusus As Double

    Private m_CreatedBy As String
    Private m_CreatedDate As String
    Private m_ModifiedBy As String
    Private m_ModifiedDate As String
    Private m_IdJasa As Integer
    Private m_IdMember As Integer

    Public Property NamaJasa As String
        Get
            Return m_NamaJasa
        End Get
        Set(ByVal value As String)
            m_NamaJasa = value
        End Set
    End Property

    Public Property JenisJasa As String
        Get
            Return m_JenisJasa
        End Get
        Set(ByVal value As String)
            m_JenisJasa = value
        End Set
    End Property

    Public Property Keterangan As String
        Get
            Return m_Keterangan
        End Get
        Set(ByVal value As String)
            m_Keterangan = value
        End Set
    End Property

    Public Property HargaNetto As Double
        Get
            Return m_HargaNetto
        End Get
        Set(ByVal value As Double)
            m_HargaNetto = value
        End Set
    End Property

    Public Property HargaNonResep As Double
        Get
            Return m_HargaNonResep
        End Get
        Set(ByVal value As Double)
            m_HargaNonResep = value
        End Set
    End Property

    Public Property HargaResep As Double
        Get
            Return m_HargaResep
        End Get
        Set(ByVal value As Double)
            m_HargaResep = value
        End Set
    End Property

    Public Property HargaBPJS As Double
        Get
            Return m_HargaBPJS
        End Get
        Set(ByVal value As Double)
            m_HargaBPJS = value
        End Set
    End Property

    Public Property HargaKhusus As Double
        Get
            Return m_HargaKhusus
        End Get
        Set(ByVal value As Double)
            m_HargaKhusus = value
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

    Public Property IdJasa As Integer
        Get
            Return m_IdJasa
        End Get
        Set(ByVal value As Integer)
            m_IdJasa = value
        End Set
    End Property

    Public Property IdMember As Integer
        Get
            Return m_IdMember
        End Get
        Set(ByVal value As Integer)
            m_IdMember = value
        End Set
    End Property
End Class

