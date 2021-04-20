Public Class frmMstRak
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim RakBindSource As New BindingSource

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

    ''' <summary>
    ''' Mengisi Combo Box pertama (provinsi)
    ''' </summary>
    Private Sub FillGudang()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_gudang")

            ComboBox1.ValueMember = "id_gudang"
            ComboBox1.DisplayMember = "nama_gudang"
            ComboBox1.DataSource = myData.Tables(0)
        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

   

    Private Sub frmMstRak_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)

    End Sub

    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Rak"
            TextBox1.ReadOnly = True
            TextBox6.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            FillGudang()
            clearText()
            TextBox6.ReadOnly = False
            TextBox1.Visible = False
            Label1.Visible = False
            Me.Text = "Input Data Rak"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessRak As New AccessData.AccessRak
            Dim Rak As New Rak
            Dim list As List(Of Rak) = AccessRak.FindRakById(id)
            For Each obj As Rak In list
                TextBox1.Text = obj.IdRak.ToString
                TextBox2.Text = obj.NamaRak
                TextBox6.Text = obj.IDMember.ToString
                ComboBox1.Text = obj.IdGudang.ToString
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveRak()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox6.Text = ""
        ComboBox1.Text = ""
       
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()

        End If
    End Sub

    Private Sub saveRak()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Rak As New Rak
        Dim AccessRak As New AccessData.AccessRak
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try
                    Rak.NamaRak = TextBox2.Text
                    Rak.IDMember = CInt(TextBox6.Text)
                    Rak.IdGudang = ComboBox1.SelectedValue
                    AccessRak.RakInsert(Rak)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Rak.IdRak = CInt(TextBox1.Text)
                    Rak.NamaRak = TextBox2.Text
                    Rak.IDMember = CInt(TextBox6.Text)
                    Rak.IdGudang = ComboBox1.SelectedValue
                    AccessRak.RakUpdate(Rak)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class