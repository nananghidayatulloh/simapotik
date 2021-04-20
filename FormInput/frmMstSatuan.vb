Public Class frmMstSatuan
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim SatuanBindSource As New BindingSource

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


    Private Sub frmMstSatuan_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)

    End Sub


    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Satuan"
            TextBox1.ReadOnly = True
            TextBox6.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Refresh()
            TextBox1.ReadOnly = False
            TextBox6.ReadOnly = False
            clearText()
            Me.Text = "Input Data Satuan"


        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessSatuan As New AccessData.AccessSatuan
            Dim Satuan As New Satuan
            Dim list As List(Of Satuan) = AccessSatuan.FindSatuanById(id)
            For Each obj As Satuan In list
                TextBox1.Text = obj.IdSatuan.ToString
                TextBox2.Text = obj.NamaSatuan
                TextBox6.Text = obj.IDMember.ToString
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveSatuan()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox6.Text = ""

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Refresh()
            Me.Close()
        End If
    End Sub

    Private Sub saveSatuan()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Satuan As New Satuan
        Dim AccessSatuan As New AccessData.AccessSatuan
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try

                    Satuan.NamaSatuan = TextBox2.Text
                    Satuan.IDMember = CInt(TextBox6.Text)
                    AccessSatuan.SatuanInsert(Satuan)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Satuan.IdSatuan = CInt(TextBox1.Text)
                    Satuan.NamaSatuan = TextBox2.Text
                    Satuan.IDMember = CInt(TextBox6.Text)
                    AccessSatuan.SatuanUpdate(Satuan)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class