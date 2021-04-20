Public Class frmMstGudang
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim GudangBindSource As New BindingSource

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


    Private Sub frmMstGudang_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)
    End Sub



    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Gudang"
            TextBox1.ReadOnly = True
            TextBox6.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            TextBox1.ReadOnly = False
            TextBox6.ReadOnly = False
            Me.Text = "Input Data Gudang"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessGudang As New AccessData.AccessGudang
            Dim Gudang As New Gudang
            Dim list As List(Of Gudang) = AccessGudang.FindGudangById(id)
            For Each obj As Gudang In list
                TextBox1.Text = obj.IdGudang.ToString
                TextBox2.Text = obj.NamaGudang
                TextBox6.Text = obj.IDMember.ToString
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveGudang()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox6.Text = ""

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub saveGudang()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Gudang As New Gudang
        Dim AccessGudang As New AccessData.AccessGudang
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try

                    Gudang.NamaGudang = TextBox2.Text
                    Gudang.IDMember = CInt(TextBox6.Text)
                    AccessGudang.GudangInsert(Gudang)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Gudang.IdGudang = CInt(TextBox1.Text)
                    Gudang.NamaGudang = TextBox2.Text
                    Gudang.IDMember = CInt(TextBox6.Text)
                    AccessGudang.GudangUpdate(Gudang)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class