Public Class Produsen
    Private m_NamaProdusen As String
    Private m_IdProdusen As Integer
    Private m_IdMember As Integer


    Public Property NamaProdusen() As String
        Get
            Return m_NamaProdusen
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaProdusen = value
        End Set
    End Property

    Public Property IdProdusen() As Integer
        Get
            Return m_IdProdusen

        End Get
        Set(ByVal value As Integer)
            m_IdProdusen = value
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
