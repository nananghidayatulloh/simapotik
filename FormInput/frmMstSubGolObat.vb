Public Class frmMstSubGolObat
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim SubGolObatBindSource As New BindingSource

    Public Property Opt() As Integer
        Get
            Return mOpt
        End Get
        Set(ByVal value As Integer)
            mOpt = value
        End Set
    End Property

    Public Property Data() As Integer
        Get
            Return mData
        End Get
        Set(ByVal value As Integer)
            mData = value
        End Set
    End Property




    Private Sub frmMstSubGolObat_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)

    End Sub




    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Sug Golongan Obat"
            TextBox1.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Sug Golongan Obat"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessSubGolonganObat As New AccessData.AccessSubGolonganObat
            Dim SubGolonganObat As New SubGolonganObat
            Dim list As List(Of SubGolonganObat) = AccessSubGolonganObat.FindGolonganObatById(id)
            For Each obj As SubGolonganObat In list
                TextBox1.Text = obj.IdGolongan.ToString
                TextBox2.Text = obj.NamaGolongan
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveSubGolonganObat()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub saveSubGolonganObat()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim SubGolonganObat As New SubGolonganObat
        Dim AccessSubGolonganObat As New AccessData.AccessSubGolonganObat
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try

                    SubGolonganObat.NamaGolongan = TextBox2.Text
                    AccessSubGolonganObat.GolonganObatInsert(SubGolonganObat)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    SubGolonganObat.IdGolongan = CInt(TextBox1.Text)
                    SubGolonganObat.NamaGolongan = TextBox2.Text
                    AccessSubGolonganObat.GolonganObatUpdate(SubGolonganObat)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class