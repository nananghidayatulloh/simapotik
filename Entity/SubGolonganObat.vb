Public Class SubGolonganObat
    Private m_NamaGolongan As String
    Private m_IdGolongan As Integer


    Public Property NamaGolongan() As String
        Get
            Return m_NamaGolongan
        End Get
        Set(ByVal value As String)
            If value = "" Then
                Throw New Exception("Silahkan masukkan Nama")
            End If
            m_NamaGolongan = value
        End Set
    End Property

    Public Property IdGolongan() As Integer
        Get
            Return m_IdGolongan

        End Get
        Set(ByVal value As Integer)
            m_IdGolongan = value
        End Set
    End Property
End Class
