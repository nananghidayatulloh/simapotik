Public Class frmMstPelanggan
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim PelangganBindSource As New BindingSource
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

    Private Sub frmMstPelanggan_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        'If e.KeyCode = Keys.Enter Then saveDokter()

    End Sub

    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Pelanggan"
            TextBox1.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Pelanggan"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessPelanggan As New AccessData.AccessPelanggan
            Dim Pelanggan As New Pelanggan
            Dim list As List(Of Pelanggan) = AccessPelanggan.FindPelangganById(id)
            For Each obj As Pelanggan In list
                TextBox1.Text = obj.IDPelanggan.ToString
                TextBox2.Text = obj.NamaPelanggan
                TextBox4.Text = obj.AlamatPelanggan
                TextBox5.Text = obj.KontakPelanggan
                TextBox6.Text = obj.IDMember.ToString
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        savePelanggan()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub savePelanggan()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim pelanggan As New Pelanggan
        Dim AccessPelanggan As New AccessData.AccessPelanggan
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try
                    pelanggan.NamaPelanggan = TextBox2.Text
                    pelanggan.AlamatPelanggan = TextBox4.Text
                    pelanggan.KontakPelanggan = TextBox5.Text
                    pelanggan.IDMember = CInt(TextBox6.Text)
                    AccessPelanggan.PelangganInsert(pelanggan)

                    clearText()
                    MsgBox("Data berhasil disimpan")
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    pelanggan.IDPelanggan = CInt(TextBox1.Text)
                    pelanggan.NamaPelanggan = TextBox2.Text
                    pelanggan.AlamatPelanggan = TextBox4.Text
                    pelanggan.KontakPelanggan = TextBox5.Text
                    pelanggan.IDMember = CInt(TextBox6.Text)
                    AccessPelanggan.PelangganUpdate(pelanggan)

                    MsgBox("Data berhasil diupdate")
                   
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub

    Private Sub frmMstPelanggan_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)
    End Sub
End Class